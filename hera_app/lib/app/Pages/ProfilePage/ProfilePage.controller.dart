import 'package:get/get.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/forms/ProfileForm.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';
import 'package:softi_common/services.dart';
import 'package:softi_mediamanager/index.dart';

class ProfilePageController extends BaseController {
  final String profileId;

  Rx<TUser> _userProfile = Rx<TUser>();
  Rx<TUserStats> _userStats = Rx<TUserStats>();

  final ResourceCollection<TPost> collection;
  final maxImageWidth = 640;

  ProfilePageController(this.profileId) : collection = firestore.collection<TPost>();

  @override
  onInit() {
    loadUserData();

    super.onInit();
  }

  @override
  void onReady() {
    var filter = Filter() //
        .$filter$eq('createdBy', profileId)
        .$orderBy('updatedAt', desc: true);

    collection.requestData(filter.build(), options: CollectionOptions());
    super.onReady();
  }

  @override
  void onClose() {
    collection.dispose();
    super.onClose();
  }

  AuthUser get authUser => AppState.find.authUser();
  TUser get userProfile => _userProfile();
  TUserStats get userStats => _userStats();

  bool get isConnectedUser {
    bool _result = (AppState.find.user()?.id ?? '-1') == (profileId ?? '');
    print((AppState.find.user()?.id ?? '-1') + '/' + (profileId ?? ''));
    return _result;
  }

  String get profileImage1 =>
      _userProfile()?.profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  loadUserData() async {
    toggleLoading();
    controllerTaskHandler(
        task: () async {
          print(loadingStatus);

          _userProfile = isConnectedUser //
              ? AppState.find.user
              : (await firestore.get<TUser>(profileId).first).obs;

          _userStats = isConnectedUser //
              ? AppState.find.userStats
              : (await firestore.get<TUserStats>(profileId).first).obs;

          // await Future.delayed(3.seconds);

          toggleIdle();

          return '';
        },
        showStatus: false,
        errorHandler: (error) {
          toggleError();
          return '';
        });
  }

  void openProductForm(TPost record) {
    Get.to(ProductForm(product: record));
  }

  void openMediaManager(TPost record) async {
    // var _user = app.authApi;
    var _library = await Get.to<List<NetworkMediaAsset>>(
      MediaManager(
        controller: MediaManagerController(
          gallery: record.images?.isEmpty ?? true ? [] : record.images.map((e) => e.toNetworAsset()).toList(),
          maxImageNumber: 3,
          fileTitleBuilder: (rand) => record.id + '/' + rand,
          placehoderImageUrl: '',
          cloudStorage: cloudStorage,
          loading: loading,
          maxImageWidth: 640,
          cameraService: cameraService,
          mediaPicker: mediaPicker,
        ),
      ),
      preventDuplicates: false,
    );

    var _result = _library?.map((e) => RemoteImage.fromNetworAsset(e))?.toList();

    print(_result.toString());

    if (record.images != _result && _result != null) {
      await firestore.save<TPost>(record.copyWith(images: _result));
    }
  }

  //! Handlers

  void handleListItemCreation(int index, int length) {
    // when the item is created we request more data when we reached the end of current page
    // print('index $index created');
    if (collection.data.length == (index + 1) && collection.hasMoreData()) {
      collection.requestMoreData();
    }
  }

  void logout() => AppState.find.logout();

  void handleEditProfilePressed() => Get.to(() => ProfileForm(AppState.find.user()));

  void handleAddProductPressed() => Get.to(() => ProductForm(product: TPost()));
}
