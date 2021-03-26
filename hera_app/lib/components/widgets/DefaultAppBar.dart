// import 'package:flutter/material.dart';
// import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
// import 'package:hera_app/themes/styles.dart';

// class DefaultAppBar extends PlatformAppBar {
//   DefaultAppBar({
//     Key key,
//     @required this.isTab,
//   }) : super(key: key);

//   final bool isTab;

//   @override
//   Widget build(BuildContext context) {
//     return PlatformAppBar(
//       title: Text(
//         'Profile',
//         style: textArialBoldsecondary(),
//       ),
//       automaticallyImplyLeading: false,
//       leading: (isTab)
//           ? null
//           : InkWell(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: Image.asset(
//                 "assets/icons/backarrow.png",
//                 scale: 3,
//                 color: secondary,
//               ),
//             ),
//       // actions: <Widget>[
//       //   if (isTab)
//       //     Padding(
//       //       padding: const EdgeInsets.only(right: 20.0),
//       //       child: Image.asset(
//       //         'assets/icons/menuicon.png',
//       //         width: 20,
//       //         height: 20,
//       //       ),
//       //     )
//       // ],
//       backgroundColor: Colors.white,
//       // iconTheme: IconThemeData(color: secondary),
//       // elevation: 0.3,
//     );
//   }
// }
