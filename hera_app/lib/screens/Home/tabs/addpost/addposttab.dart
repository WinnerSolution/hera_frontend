import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/screens/Home/tabs/addpost/newpost.dart';
import 'package:hera_app/themes/styles.dart';

class AddPost extends StatefulWidget {
  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> with TickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  // File _image;
  // File _image1;

  Future getImagefromCamera() async {
    // var image = await ImagePicker().getImage(source: ImageSource.camera);

    setState(() {
      // _image = image;
    });
  }

  Future getImagefromGallery() async {
    // var image = await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      // _image1 = image;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFTabBarView(
        controller: tabController,
        children: <Widget>[
          Container(
            child: NewPost(),
            // child: getImagefromGallery(),
          ),
          Container(
              // child: EditImage(),
              ),
        ],
      ),
      bottomNavigationBar: GFTabBar(
        // initialIndex: 0,
        length: 2,
        controller: tabController,
        tabs: [
          InkWell(
            onTap: getImagefromGallery,
            child: Tab(
              text: 'Gallery',
            ),
          ),
          InkWell(
            onTap: getImagefromCamera,
            child: Tab(
              text: 'Camera',
            ),
          ),
        ],
        indicatorColor: Colors.transparent,
//        indicatorSize: TabBarIndicatorSize.label,
        labelColor: secondary,
        labelPadding: EdgeInsets.all(0),
        tabBarColor: Colors.white,
        // unselectedLabelColor: getGFColor(GFColor.light),
        labelStyle: textArialBoldsecondary(),
        unselectedLabelStyle: textArialBoldsecondaryop(),
      ),
    );
  }
}
