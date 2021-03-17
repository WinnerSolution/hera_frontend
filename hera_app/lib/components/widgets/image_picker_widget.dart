// import 'dart:io';

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:hera_app/components/widgets/modal_image_selector.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:get/get.dart';
// import 'package:softi_common/core.dart';

// enum ImagePickerWidgetShape { square, circle }

// // class TempImage {
// //   String url;
// //   File selectedImage;

// //   getImage() => (selectedImage == null) ? url : selectedImage;

// //   TempImage({this.url, this.selectedImage});
// // }

// class ImagePickerWidgetController extends BaseController {
//   Rx<File> image = Rx<File>();

//   // ImagePickerWidgetController(this.image);

//   /// Alters the actual image
//   Future<File> changeImage(Widget modal) async {
//     final ImagePicker _picker = ImagePicker();

//     File response;
//     ImageSource type = await Get.bottomSheet(modal);
//     if (type != null) {
//       final PickedFile _picked = await _picker.getImage(source: type);
//       if (_picked != null) {
//         response = File(_picked.path);
//       }
//     }
//     return _cropImage(response);
//   }

//   Future<File> _cropImage(imageFile) async {
//     File croppedFile = await ImageCropper.cropImage(
//         sourcePath: imageFile.path,
//         aspectRatioPresets: Platform.isAndroid
//             ? [
//                 CropAspectRatioPreset.square,
//                 CropAspectRatioPreset.ratio3x2,
//                 CropAspectRatioPreset.original,
//                 CropAspectRatioPreset.ratio4x3,
//                 CropAspectRatioPreset.ratio16x9
//               ]
//             : [
//                 CropAspectRatioPreset.original,
//                 CropAspectRatioPreset.square,
//                 CropAspectRatioPreset.ratio3x2,
//                 CropAspectRatioPreset.ratio4x3,
//                 CropAspectRatioPreset.ratio5x3,
//                 CropAspectRatioPreset.ratio5x4,
//                 CropAspectRatioPreset.ratio7x5,
//                 CropAspectRatioPreset.ratio16x9
//               ],
//         androidUiSettings: AndroidUiSettings(
//             toolbarTitle: 'Cropper',
//             toolbarColor: Colors.deepOrange,
//             toolbarWidgetColor: Colors.white,
//             initAspectRatio: CropAspectRatioPreset.original,
//             lockAspectRatio: false),
//         iosUiSettings: IOSUiSettings(
//           title: 'Cropper',
//         ));

//     return croppedFile;
//     // if (croppedFile != null) {
//     //   imageFile = croppedFile;
//     //   setState(() {
//     //     state = AppState.cropped;
//     //   });
//     // }
//   }
// }

// class ImagePickerWidget extends StatelessWidget {
//   /// The diameter of the container in which the image is contained
//   final double diameter;

//   /// The shape of the widget [square or circle]
//   final ImagePickerWidgetShape shape;

//   /// The initial image to be displaied, can be a  `File` or a external url
//   final String initialImage;

//   /// Checks whether the image can be changed
//   final bool isEditable;

//   /// Case the image can be changed, this function will be called after the change
//   final void Function(File) onChange;
//   final Color backgroundColor;
//   final Widget editIcon;
//   final Widget modalTitle;
//   final Widget modalCameraText;
//   final Widget modalGalleryText;
//   final IconData modalCameraIcon;
//   final IconData modalGalleryIcon;

//   ImagePickerWidget({
//     Key key,
//     @required this.diameter,
//     this.initialImage,
//     this.isEditable = false,
//     this.onChange,
//     this.backgroundColor,
//     this.shape = ImagePickerWidgetShape.circle,
//     this.editIcon,
//     this.modalTitle,
//     this.modalCameraText,
//     this.modalGalleryText,
//     this.modalCameraIcon,
//     this.modalGalleryIcon,
//   }) : super(key: key);

//   ImagePickerWidgetController get con => Get.put(ImagePickerWidgetController());

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       var child = Container(
//         width: diameter,
//         height: diameter,
//         decoration: BoxDecoration(
//           color: backgroundColor ?? Colors.grey[500],
//           borderRadius: BorderRadius.all(
//             shape == ImagePickerWidgetShape.circle ? Radius.circular(128) : Radius.circular(8),
//           ),
//           image: (con.image() != null)
//               ? DecorationImage(image: FileImage(con.image()), fit: BoxFit.cover)
//               : (initialImage != null)
//                   ? DecorationImage(image: CachedNetworkImageProvider(initialImage), fit: BoxFit.cover)
//                   : null,
//         ),
//       );

//       if (isEditable) {
//         return GestureDetector(
//           onTap: () {
//             con
//                 .changeImage(ModalImageSelector(
//               modalTitle: modalTitle,
//               modalCameraText: modalCameraText,
//               modalGalleryText: modalGalleryText,
//               modalCameraIcon: modalCameraIcon,
//               modalGalleryIcon: modalGalleryIcon,
//             ))
//                 .then((file) {
//               if (file != null) {
//                 onChange(file);
//                 if (con.image == null)
//                   con.image = file.obs;
//                 else
//                   con.image(file);
//               }
//             });
//           },
//           child: Container(
//             width: diameter,
//             height: diameter,
//             child: Stack(
//               children: [
//                 child,
//                 Align(
//                   alignment: Alignment.bottomLeft,
//                   child: editIcon ??
//                       Card(
//                         shape: CircleBorder(),
//                         color: Colors.grey[700],
//                         child: Padding(
//                           padding: EdgeInsets.all(8),
//                           child: Icon(Icons.edit, size: 22, color: Colors.white),
//                         ),
//                       ),
//                 )
//               ],
//             ),
//           ),
//         );
//       } else {
//         return child;
//       }
//     });
//   }
// }
