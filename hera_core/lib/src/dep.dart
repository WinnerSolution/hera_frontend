import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hera_core/constants/firebase_settings.dart';
import 'package:hera_core/src/providers/firestore_resources.dart';
import 'package:hera_core/src/services/cloud_functions.dart';
import 'package:hera_core/src/services/firesore_repo.dart';

import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';
import 'package:softi_common/services.dart';
import 'package:softi_firebase/auth.dart';
import 'package:softi_firebase/firestore.dart';
import 'package:softi_firebase/services.dart';

//
Future<void> coreDependenciesSetup() async {
  await Firebase.initializeApp();
  await GetStorage.init();

  /// LocalStorage service
  Get.put<ILocalStore>(LocalStore());

  /// LocalStorage service
  Get.put<ILoadingService>(LoadingService());

  /// Get.put<DatabaseController>(DatabaseController(resourceMapper, firestoreCollectionService));
  Get.put<IResourceBase>(
    FirestoreResourceBase(resourceResolver, FirebaseFirestore.instance),
    tag: 'firestore',
  );

  /// Auth Services (common module)
  var firebaseAuthService = FirebaseAuthService(FirebaseAuth.instance, firebaseSettings);
  Get.put<IAuthService>(firebaseAuthService, permanent: true);

//!

  // Get.put<IDynamicLinkService>(FirebaseDeeplinkService(
  //   firebaseSettings,
  // ));

  // /// Handle dynamic links
  // Get.find<IDynamicLinkService>().registerhandleDeeplinks(DeepLinkHandler((deepLink) async {
  //   var _authLink = deepLink.link.toString();
  //   if (await Get.find<IAuthService>().isSignInWithEmailLink(link: _authLink)) {
  //     var email = await Get.find<ILocalStore>().getSecuredKey('UserEmail');
  //     await Get.find<IAuthService>().signInWithEmailAndLink(email: email, link: deepLink.link.toString());
  //   }
  // }));

  // Get.find<IDynamicLinkService>().handleDeeplinks();

//!

  /// Cloud functions (Local module)
  Get.put<IMediaPicker>(MediaPicker());

  /// Cloud functions (Local module)
  Get.put<ICameraService>(CameraService());

  /// Cloud functions (Local module)
  Get.put<IRemoteStorageService>(FirebaseStorageService());

  /// Firestore repo
  Get.put(FirestoreRepo(firestore));
}

final ILocalStore localStorage = Get.find();
final CloudFunctionsService functions = Get.find();
final IResourceBase firestore = Get.find(tag: 'firestore');
final ILoadingService loading = Get.find();
final IMediaPicker mediaPicker = Get.find();
final ICameraService cameraService = Get.find();
final IRemoteStorageService cloudStorage = Get.find();
final FirestoreRepo firestoreRepo = Get.find<FirestoreRepo>();
