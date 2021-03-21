import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/screens/Home/home.dart';
import 'package:hera_app/screens/Home/tabs/addpost/tag.dart';
import 'package:hera_app/themes/styles.dart';

class SelectedPost extends StatefulWidget {
  @override
  _SelectedPostState createState() => _SelectedPostState();
}

class _SelectedPostState extends State<SelectedPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: secondary),
        centerTitle: true,
        title: Text('New Post', style: textArialBoldsecondary()),
        elevation: 0.5,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            "assets/icons/backarrow.png",
            scale: 3,
            color: secondary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildSelectedPost(),
            buildDivider(),
            buildAddCaptionSearchBox(),
            buildDividerFull(),
            buildAllowComment(),
            buildDividerFull(),
            buildTagTile(),
            buildDividerFull(),
            SizedBox(height: 30)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        height: 60,
        // ignore: deprecated_member_use
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
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
                "Post",
                style: textArialBoldlgwhite(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSelectedPost() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/u3.png'), fit: BoxFit.cover)),
    );
  }

  Widget buildDivider() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 2,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
    );
  }

  Widget buildAddCaptionSearchBox() {
    return Container(
      height: 45,
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Color(0xFFF6F9FD),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.09), blurRadius: 0.5)]),
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: 'Add Caption',
          hintStyle: textArialRegularsecondarysmwithop(),
        ),
        style: textArialRegularsecondarysmwithop(),
      ),
    );
  }

  Widget buildDividerFull() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 2,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
    );
  }

  Widget buildAllowComment() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Allow Comments',
            style: textArialRegularsecondary(),
          ),
          GFToggle(
            onChanged: (bool value) {},
            type: GFToggleType.ios,
            enabledThumbColor: Color(0xFF8DD378),
            enabledTrackColor: Color(0xFF8DD378).withOpacity(0.25),
          )
        ],
      ),
    );
  }

  Widget buildTagTile() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Tag()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Tag friends',
              style: textArialRegularsecondary(),
            ),
          ],
        ),
      ),
    );
  }
}
