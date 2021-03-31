import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/app/Home/home.dart';
import 'package:hera_app/themes/styles.dart';

class PostStatus extends StatefulWidget {
  @override
  _PostStatusState createState() => _PostStatusState();
}

class _PostStatusState extends State<PostStatus> with TickerProviderStateMixin {
  TabController tabController;

  int currentIndex = 0;

  // File _image;

  Future getImagefromCamera() async {
    // var image = await ImagePicker().getImage(source: ImageSource.camera);

    setState(() {
      // _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        iconTheme: IconThemeData(color: secondary),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            'assets/icons/backarrow.png',
            scale: 3,
            color: secondary,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/icons/searchfield.png',
                  width: 35,
                  height: 35,
                ),
                Text('What\'s on your mind?', style: textArialRegularsecondarywithop())
              ],
            ),
          ),
          Container(
            width: 335,
            height: 180,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(color: Color(0xFFF6F9FD), borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              maxLines: 8,
              style: textArialRegularsecondary(),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintStyle: textArialRegularsecondary(),
                  hintText: 'Type Here.....',
                  errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Color(0xFFF44242))),
                  errorStyle: TextStyle(color: Color(0xFFF44242)),
                  contentPadding: EdgeInsets.all(10),
                  // enabledBorder: const OutlineInputBorder(
                  //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                  // ),

                  // focusedBorder: OutlineInputBorder(
                  //   // borderSide: BorderSide(color: primary),
                  // ),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  fillColor: Colors.white,
                  focusColor: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Allow comments', style: textArialRegularsecondary()),
                GFToggle(
                  onChanged: (bool value) {},
                  type: GFToggleType.ios,
                  enabledThumbColor: Color(0xFF8DD378),
                  enabledTrackColor: Color(0xFF8DD378).withOpacity(0.25),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 110,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: getImagefromCamera,
              child: Container(
                width: 67,
                height: 44,
                decoration: BoxDecoration(border: Border.all(color: secondary), borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Image.asset(
                    'assets/icons/camera.png',
                    width: 21,
                    height: 17,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: 44,
              // ignore: deprecated_member_use
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                // size: GFSize.LARGE,
                color: primary,
                // blockButton: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Post',
                      style: textArialBoldlgwhite(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
//   Future<void> _optionsDialogBox() {
//   return showDialog(context: context,
//     builder: (BuildContext context) {
//         return AlertDialog(
//           content: new SingleChildScrollView(
//             child: new ListBody(
//               children: <Widget>[
//                 GestureDetector(
//                   child: new Text('Take a picture'),
//                   onTap: openCamera,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                 ),
//                 GestureDetector(
//                   child: new Text('Select from gallery'),
//                   onTap: openGallery,
//                 ),
//               ],
//             ),
//           ),
//         );
//       });
// }
}
