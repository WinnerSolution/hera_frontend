import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';

class CloudFunctionsService {
  CloudFunctionsService(this._cloudFunctions);
  final FirebaseFunctions _cloudFunctions;
  final defaultTimeout = Duration(seconds: 10);

  Future<T> _lunchFunction<T>({
    String name,
    Map<String, dynamic> params,
    @required T timeoutValue,
  }) async {
    var callable = _cloudFunctions.httpsCallable(name);
    var resultFuture = callable<T>(params).then((value) {
      return value.data;
    });

    var timeoutFuture = Future.delayed(defaultTimeout, () => timeoutValue);

    var _result = Future.any([resultFuture, timeoutFuture]);
    return _result;
  }

  Future<dynamic> createAccount(String phone) async {
    var _result = await _lunchFunction<dynamic>(
      name: 'callable-createAccount',
      params: {
        'phone': phone,
      },
      timeoutValue: 'timeout',
    );

    return _result;
  }

  Future<String> createTransaction(num amount, String accountId) async {
    var _result = await _lunchFunction(
      name: 'callable-createTransaction',
      params: {
        'accountId': accountId,
        'amount': amount,
      },
      timeoutValue: 'timeout',
    );

    return _result;
  }

  Future<String> createInternalTransaction({
    num amount,
    String phone,
    String pincode,
    bool fromCustomer,
  }) async {
    var _result = await _lunchFunction(
      name: 'callable-transation-internal',
      params: {
        'phone': phone,
        'amount': amount,
        'pincode': pincode,
        'fromCustomer': fromCustomer,
      },
      timeoutValue: 'timeout',
    );

    return _result;
  }

  Future<String> createDevice(String phoneNumber, String emei) async {
    var _result = await _lunchFunction<String>(
      name: 'callable-createDevice',
      params: {
        'phoneNumber': phoneNumber,
        'emei': emei,
      },
      timeoutValue: 'timeout',
    );

    return _result;
  }
}
