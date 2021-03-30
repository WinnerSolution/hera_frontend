import 'package:easy_debounce/easy_debounce.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';

enum LoginInputType { phone, email, invalid }

class LoginController extends BaseController {
  final _loginInput = ''.obs;
  final _loginInputType = LoginInputType.invalid.obs;

  // Phone auth fields
  final _sendCodeResult = SendCodeResult(phoneNumber: null).obs;
  final _validPhoneVerificationCode = false.obs;

  // Email auth fields
  final _emailSentTo = ''.obs;

  //! Getters
  bool get isLoginInputValid => _loginInputType() != LoginInputType.invalid;
  bool get isEmailSent => _emailSentTo() != '';
  bool get isPhoneCodeSent => _sendCodeResult().phoneNumber != null;
  bool get isPhoneVerificationCodeValid => _validPhoneVerificationCode();
  bool get isEditing => !isEmailSent && !isPhoneCodeSent;

  void validateLoginInput(String input) async {
    EasyDebounce.debounce(
        'my-debouncer', // <-- An ID for this particular debouncer
        Duration(milliseconds: 300), // <-- The debounce duration
        () {
      if (input.isPhoneNumber) {
        _loginInput(input);
        _loginInputType(LoginInputType.phone);
        return;
      }
      if (('+225' + input).isPhoneNumber) {
        _loginInput('+225' + input);
        _loginInputType(LoginInputType.phone);
        return;
      }

      if (input.isEmail) {
        _loginInput(input);
        _loginInputType(LoginInputType.email);
        return;
      }

      _loginInputType(LoginInputType.invalid);
    } // <-- The target method
        );
  }

  void reset() {
    _loginInputType(LoginInputType.invalid);
    _loginInput('');

    // reset phone auth variables
    _sendCodeResult(SendCodeResult(phoneNumber: null));
    _validPhoneVerificationCode(false);

    // reset email link variable
    _emailSentTo('');
  }

  Future<void> sendPhoneVerificationCode() async {
    toggleLoading();

    if (_loginInputType() != LoginInputType.phone) {
      toggleIdle();
      return;
    }

    SendCodeResult _result;
    try {
      if (_sendCodeResult().phoneNumber != null) {
        _result = await _sendCodeResult().resendCode();
      } else {
        _result = await AppController.find.authApi.sendSignInWithPhoneCode(phoneNumber: _loginInput());
      }

      if (_result == null) {
        return;
      }

      _sendCodeResult(_result);

      // ignore: unawaited_futures
      _sendCodeResult().authResult?.then((_authUser) {
        AppController.find.isNewAuthUser(_authUser.isNew ?? false);
      });
      // authNavigatorKey.currentState.pushNamed(LoginRoutes.verification);
      toggleIdle();

      // await Get.to(VerificationPage());
    } catch (e) {
      _validPhoneVerificationCode(false);
      toggleIdle();
      rethrow;
    }
  }

  Future<void> verifyPhoneNumber(String code) async {
    toggleLoading();

    try {
      await _sendCodeResult().codeVerification(code);
    } catch (e) {
      _validPhoneVerificationCode(false);
      rethrow;
    } finally {
      toggleIdle();
    }
  }

  Future<void> sendEmailLynk() async {
    toggleLoading();

    if (_loginInputType() != LoginInputType.email) {
      toggleIdle();
      return;
    }

    try {
      await AppController.find.authApi.sendSignInWithEmailLink(email: _loginInput());
      _emailSentTo(_loginInput());
    } catch (e) {
      _emailSentTo('');
      rethrow;
    } finally {
      toggleIdle();
    }
  }

  //
  Future<void> LoginWithPhoneOrEmail() async {
    if (_loginInputType() == LoginInputType.phone) {
      await sendPhoneVerificationCode();
    }

    if (_loginInputType() == LoginInputType.email) {
      await sendEmailLynk();
    }
  }

  @override
  void onInit() {
    // busy.listen((busy) {
    //   if (busy) {
    //     loading.showStatus();
    //   } else {
    //     loading.dismiss();
    //   }
    // });
    super.onInit();
  }

  @override
  void onClose() {
    EasyDebounce.cancel('my-debouncer');
    super.onClose();
  }
}
