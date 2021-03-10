import 'package:softi_firebase/auth.dart';

const firebaseSettings = FirebaseSettings(
  // url: 'http://localhost:5000',
  url: 'https://civilio.app/',
  dynamicLinkPrefix: 'https://links.civilio.com',

  //
  appStoreId: '1519647705',
  iOSBundleID: 'com.softi.hera.app',
  iOSMinimumVersion: '1.0',

  //
  androidPackageName: 'com.softi.hera.app',
  androidInstallIfNotAvailable: true,
  androidMinimumVersion: '1.0',

  //
  facebookClientId: '500775533853632',

  //
  appleSignInClientId: 'com.softi.hera',
  appleSignInCallbackUrl: 'https://us-central1-hera-ci.cloudfunctions.net/https-applesignIn',
);

/// Google Map API
const String googleMapApiKey = 'AIzaSyDpIeE1fBZZRUMurd0awPMosZxcwtVDvI8';

/// Cloud Storage
const String users_remote_folder = 'users';
