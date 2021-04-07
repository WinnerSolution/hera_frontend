// import 'dart:async';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:flutter_image_compress/flutter_image_compress.dart';
// import 'package:get/get.dart';
// import 'package:hera_app/components/extensions/string_extentions.dart';
// import 'package:hera_app/components/widgets/t.dart';
// import 'package:hera_core/hera_core.dart';
// import 'package:softi_common/form.dart';
// import 'package:softi_common/services.dart';
// import 'package:velocity_x/velocity_x.dart';

// // class UserProfileFormController extends BaseController with FormControllerMixin<TUser> {
// class ProfileFormController extends ResourceFormController<TUser> {
//   var maxImageWidth = 640;

//   ProfileFormController(TUser user) : super(user, db: firestore);

//   @override
//   Future<void> afterResourceSave(record) async {
//     await loading.showSuccess('Saved', duration: 200.milliseconds);
//     Get.back<TUser>(result: record);
//   }

//   FutureOr<Uint8List> compressImage(MediaAsset media) {
//     // Image compression
//     if (media is FileMediaAsset) {
//       return FlutterImageCompress.compressWithFile(
//         media.file.absolute.path,
//         minHeight: maxImageWidth,
//         minWidth: maxImageWidth,
//       );
//     }

//     if (media is MemoryMediaAsset) {
//       return FlutterImageCompress.compressWithList(
//         media.data,
//         minHeight: maxImageWidth,
//         minWidth: maxImageWidth,
//       );
//     }

//     return null;
//   }
// }

// class ProfileForm extends StatelessWidget {
//   final TUser user;
//   ProfileForm(this.user);

//   ProfileFormController get controller => Get.put(ProfileFormController(user));

//   @override
//   Widget build(BuildContext context) {
// // user

//     return Scaffold(
//       appBar: AppBar(
//         title: 'Edit User Profile'.headline5.makeCentered(),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: FormBuilder(
//                 key: controller.formKey,
//                 // onChanged: () => controller.saveState(),
//                 initialValue: controller.initialValue,
//                 child: ListView(
//                   children: <Widget>[
//                     // FormBuilderField(
//                     //   name: "profilePicture",
//                     //   builder: (FormFieldState<dynamic> field) {
//                     // return Obx(
//                     //   () => CircleAvatar(
//                     //     backgroundColor: Colors.transparent,
//                     //     foregroundImage: controller.selectedImage().file == null
//                     //         ? CachedNetworkImageProvider(controller.currentImage().url)
//                     //         : FileImage(controller.selectedImage().file),

//                     //     radius: 120.0,
//                     //     // : ,
//                     //     child: CircleAvatar(
//                     //       radius: 118.0,
//                     //       child: ClipOval(
//                     //         child: InkWell(
//                     //           onTap: () async {
//                     //             var selectedImage = await mediaPicker.selectMediaFromGallery();
//                     //             controller.selectedImage(selectedImage[0]);
//                     //             field.didChange(selectedImage[0]);
//                     //           },
//                     //           // child: Container(),
//                     //         ),
//                     //       ),
//                     //       backgroundColor: Colors.white,
//                     //     ),
//                     //   ),
//                     // );

//                     // InputDecorator(
//                     //   decoration: InputDecoration(
//                     //     labelText: "Select option",
//                     //     contentPadding: EdgeInsets.only(top: 10.0, bottom: 0.0),
//                     //     border: InputBorder.none,
//                     //     errorText: field.errorText,
//                     //   ),
//                     //   child: Container(
//                     //     height: 200,
//                     //     child: CupertinoPicker(
//                     //       itemExtent: 30,
//                     //       children: options.map((c) => Text(c)).toList(),
//                     //       onSelectedItemChanged: (index) {
//                     //         field.didChange(options[index]);
//                     //       },
//                     //     ),
//                     //   ),
//                     // );
//                     //   },
//                     // ),

//                     //
//                     24.heightBox,
//                     'Base infos'.headline4.make(),
//                     16.heightBox,
//                     FormBuilderTextField(
//                       name: 'fullname',
//                       decoration: InputDecoration(
//                         labelText: 'Full name',
//                       ),
//                     ),
//                     FormBuilderDropdown(
//                       name: 'gender',
//                       decoration: InputDecoration(
//                         labelText: 'Gender',
//                       ),
//                       items: [
//                         DropdownMenuItem(value: 0, child: 'Female'.bodyText1.make()),
//                         DropdownMenuItem(value: 1, child: 'Male'.bodyText1.make()),
//                         DropdownMenuItem(value: 2, child: 'Other'.bodyText1.make()),
//                       ],
//                     ),
//                     FormBuilderDateTimePicker(
//                       name: 'dateOfBirth',
//                       decoration: InputDecoration(
//                         labelText: 'Birth date',
//                       ),
//                       inputType: InputType.date,
//                     ),
//                     16.heightBox,

//                     //
//                     // 24.heightBox,
//                     // 'Préferences'.headline4.make(),
//                     // 16.heightBox,
//                     // [
//                     //   Expanded(
//                     //     child: FormBuilderColorPickerField(
//                     //       name: 'prefredColor1',
//                     //       decoration: InputDecoration(
//                     //         labelText: 'Prefred Color 1',
//                     //       ),
//                     //       colorPickerType: ColorPickerType.BlockPicker,
//                     //     ),
//                     //   ),
//                     //   16.widthBox,
//                     //   Expanded(
//                     //     child: FormBuilderColorPickerField(
//                     //       name: 'prefredColor2',
//                     //       decoration: InputDecoration(
//                     //         labelText: 'Prefred Color 2',
//                     //       ),
//                     //       colorPickerType: ColorPickerType.BlockPicker,
//                     //     ),
//                     //   )
//                     // ].hStack(),
//                     // FormBuilderCheckbox(
//                     //   name: 'isPrivate',
//                     //   decoration: InputDecoration(
//                     //     labelText: 'Private Profile',
//                     //   ),
//                     //   title: 'Private Profile'.caption.make(),
//                     //   // colorPickerType: ColorPickerType.BlockPicker,
//                     // ),
//                   ],
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () => controller.save(),
//               child: 'SAUVEGARDER'.bodyText1.makeCentered(),
//             )
//           ],
//         ).p8(),
//       ),
//     );
//   }
// }
