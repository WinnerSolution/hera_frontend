// import 'dart:async';

// import 'package:get/get.dart';
// import 'package:softi_common/core.dart';
// import 'package:softi_common/resource.dart';

// class RecordController<T extends IResourceData> extends BaseController with RecordControllerMixin<T> {
//   final String recordId;
//   final bool reactive;
//   final ResourceBase resourceBase;

//   RecordController(
//     this.recordId, {
//     ResourceBase resourceBase,
//     this.reactive: true,
//   }) : resourceBase = resourceBase ?? Get.find<ResourceBase>();

//   @override
//   void onInit() {
//     initRecord();
//     super.onInit();
//   }

//   @override
//   void onClose() {
//     disposeRecord();
//     super.onClose();
//   }
// }

// mixin RecordControllerMixin<T extends IResourceData> on BaseController {
//   String get recordId;
//   bool get reactive;
//   ResourceBase get resourceBase;

//   Rx<T> _rxRecord = Rx<T>();
//   StreamSubscription _sub;

//   void initRecord() {
//     toggleLoading();
//     _sub = resourceBase.get<T>(recordId, reactive: reactive).listen((recordEvent) {
//       _rxRecord(recordEvent);
//     });
//   }

//   void disposeRecord() {
//     _sub.cancel();
//   }

//   Rx<T> get record => _rxRecord;
// }
