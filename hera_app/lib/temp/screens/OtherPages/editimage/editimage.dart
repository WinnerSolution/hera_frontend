import 'package:flutter/material.dart';
import 'package:hera_app/themes/styles.dart';

class EditImage extends StatefulWidget {
  @override
  _EditImageState createState() => _EditImageState();
}

class _EditImageState extends State<EditImage> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildStoryCard(),
          ],
        ),
      ),
    );
  }

  Widget buildStoryCard() {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/story.png'), fit: BoxFit.cover)),
        ),
        Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 88,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.50)),
            )),
        Positioned(top: 45, left: 25, child: Icon(Icons.arrow_back, color: Colors.white)),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 84,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.60)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/icons/smiley.png',
                  width: 34,
                  height: 34,
                ),
                Image.asset(
                  'assets/icons/Aa.png',
                  width: 34,
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset(
                    'assets/icons/paint.png',
                    width: 34,
                    height: 34,
                  ),
                ),
                Container(
                  // width: 100,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {},
                    color: primary,
                    child: Text(
                      'Add to stories',
                      style: textArialRegularlgWhite(),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget buildEmailTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
