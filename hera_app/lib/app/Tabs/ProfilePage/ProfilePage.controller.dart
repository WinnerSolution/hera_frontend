import 'package:get/get.dart';
import 'package:hera_app/app/Forms/ProfileForm/ProfileForm.dart';
import 'package:hera_app/app/Pages/PostDetailsPage/PostDetailsPage.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/forms/ProfileForm.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/resource.dart';
import 'package:softi_common/services.dart';
import 'package:softi_mediamanager/index.dart';

class ProfilePageController extends CollectionController<TPost> {
  final String profileId;

  Rx<TUser> _userProfile = Rx<TUser>();
  Rx<TUserStats> _userStats = Rx<TUserStats>();

  final maxImageWidth = 640;

  ProfilePageController(this.profileId)
      : super(
          firestore.collection<TPost>(),
          filter: Filter() //
              .$filter$eq('createdBy', profileId)
              .$orderBy('updatedAt', desc: true),
        );

  @override
  onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  AuthUser get authUser => AppController.find.authUser();
  TUser get userProfile => _userProfile();
  TUserStats get userStats => _userStats();

  bool get isConnectedUser => AppController.find.isConnectedUser(profileId);

  String get profileImage =>
      _userProfile()?.profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  Future<void> loadView() async {
    super.loadView();

    _userProfile = isConnectedUser //
        ? AppController.find.user
        : (await firestore.get<TUser>(profileId).first).obs;

    _userStats = isConnectedUser //
        ? AppController.find.userStats
        : (await firestore.get<TUserStats>(profileId).first).obs;
  }

  // loadUserData() async {}

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

    if (record.images != _result && _result != null) {
      await firestore.save<TPost>(record.copyWith(images: _result));
    }
  }

  //! Handlers

  void logout() => AppController.find.logout();

  void handleEditProfilePressed() => Get.to(() => ProfileForm(AppController.find.user()));

  void handleAddProductPressed() => Get.to(() => ProductForm(product: TPost()));

  void handlePostOnTap(int index) => Get.to(() => PostDetails(collection.data()[index]));

  void handleOnPressedEditUser() => Get.to(() => EditProfile(userProfile));

  void handleOnLogout() => () => AppController.find.logout();
}
