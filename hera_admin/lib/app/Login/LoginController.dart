import 'package:hera_admin/controllers/app_controller.dart';
import 'package:hera_core/civilio_core.dart';
import 'package:get/get.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';

class LoginController extends BaseController {
  @override
  void onInit() {
    busy.listen((busy) {
      if (busy) {
        loading.showStatus();
      } else {
        loading.dismiss();
      }
    });
    super.onInit();
  }

  final isoCode = 'CI'.obs;
  final phone = ''.obs;
  // final fullName = ''.obs;

  final validCode = false.obs;
  final validPhone = true.obs;
  final codeSent = SendCodeResult(phoneNumber: null).obs;

  void validatePhone(String input) async {
    //
    var _valid1 = input.isPhoneNumber;
    var _valid2 = ('+225' + input).isPhoneNumber;
    // ? '+225' + input : input; //await PhoneNumberUtil.isValidNumber(input, 'CI');

    if (_valid1) {
      phone(input);
      validPhone(true);
    } else if (_valid2) {
      phone('+225' + input);
      validPhone(true);
    } else {
      phone('');
      validPhone(false);
    }
  }

  void reset() {
    codeSent(SendCodeResult(phoneNumber: null));
    validPhone(true);
    validCode(true);
  }

  Future<void> sendPhoneVerificationCode() async {
    busy(true);

    if (!validPhone()) {
      busy(false);
      return;
    }

    var _result;
    try {
      if (codeSent().phoneNumber != null) {
        // RESEND THE CODE IF CODESENT IS NOT NULL
        _result = await codeSent().resendCode();
      } else {
        _result = await AppState.find.authApi.sendSignInWithPhoneCode(phoneNumber: phone());
      }

      if (_result == null) return;
      codeSent(_result);

      // ignore: unawaited_futures
      codeSent().authResult?.then((_authUser) {
        AppState.find.isNewAuthUser(_authUser.isNew ?? false);
      });
      // authNavigatorKey.currentState.pushNamed(LoginRoutes.verification);
      busy(false);

      // await Get.to(VerificationPage());
    } catch (e) {
      validCode(false);
      busy(false);
      rethrow;
    }
  }

  // Future<void> resendPhoneCode() async {
  //   busy(true);

  //   if (codeSent().phoneNumber == null) {
  //     busy(false);
  //     return;
  //   }

  //   final _result = await codeSent().resendCode();

  //   if (_result != null) {
  //     codeSent(_result);
  //   }

  //   busy(false);
  // }

  Future<void> verifyPhoneNumber(code) async {
    busy(true);

    try {
      await codeSent().codeVerification(code);
    } catch (e) {
      validCode(false);
      rethrow;
    } finally {
      busy(false);
    }
  }
}
