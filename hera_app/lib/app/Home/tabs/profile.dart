import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Home/tabs/profile.controller.dart';
import 'package:hera_app/app/Pages/editprofile.dart';
import 'package:hera_app/screens/OtherPages/chat/chat.dart';
import 'package:hera_app/themes/styles.dart';

class Profile extends StatelessWidget {
  ProfileController get con => Get.put<ProfileController>(ProfileController());

  final bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            buildProfileCard(),
            SizedBox(height: 44),
            buildPhotoGrid(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileCard() {
    return Container(
      width: Get.mediaQuery.size.width,
      // height: Get.mediaQuery.size.height * 0.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.20),
                blurRadius: 5,
                offset: Offset(
                  0.0,
                  0.75,
                ))
          ]),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Profile',
                style: textArialBoldsecondary(),
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: CachedNetworkImageProvider(con.profileImage), fit: BoxFit.cover)),

            // image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
            child: Container(),
            // child: Image.asset(''),
          ),
          Text(
            con.user()?.fullname ?? '',
            style: textArialBoldlgSecondary(),
          ),
          Text(
            con.user()?.status ?? '',
            style: textArialRegularsecondarydull(),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Likes',
                    style: textArialRegularsecondarydull(),
                  ),
                  Text(
                    con.userStats().likesCount.toString(),
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Post',
                    style: textArialRegularsecondarydull(),
                  ),
                  Text(
                    con.userStats().postsCount.toString(),
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Followers',
                    style: textArialRegularsecondarydull(),
                  ),
                  Text(
                    con.userStats().followersCount.toString(),
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Following',
                    style: textArialRegularsecondarydull(),
                  ),
                  Text(
                    con.userStats().followingCount.toString(),
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 335,
            height: 44,
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  Get.context,
                  MaterialPageRoute(builder: (context) => EditProfile()),
                );
              },
              color: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0), side: BorderSide(color: secondary)),
              child: Text(
                'Edit Profile',
                style: textArialRegularlgsecondary(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: primary,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/icons/addfriend.png',
                        color: Colors.white,
                      ),
                      Text(
                        'Follow Back',
                        style: textArialRegularlgwhite(),
                      )
                    ],
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
              ),
              Container(
                height: 40,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      Get.context,
                      MaterialPageRoute(builder: (context) => Chat()),
                    );
                  },
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0), side: BorderSide(color: secondary)),
                  child: Text(
                    'Message',
                    style: textArialRegularlgsecondary(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }

  Widget buildPhotoGrid() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: Get.mediaQuery.size.width * 0.475, height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/images/u3.png'), fit: BoxFit.cover)),
            ),
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: Get.mediaQuery.size.width * 0.475, height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/images/u5.png'), fit: BoxFit.cover)),
            ),
            // GridView.builder(
            //   physics: ScrollPhysics(),
            //   shrinkWrap: true,
            //   scrollDirection: Axis.vertical,
            //   itemCount: 5,
            //   itemBuilder: (BuildContext context, int index) {
            //     return SingleChildScrollView(
            //         child: InkWell(
            //       //               onTap: () {
            //       //                  Navigator.push(
            //       //   context,
            //       //   MaterialPageRoute(builder: (context) => PostDetails()),
            //       // );
            //       //               },
            //       child: Container(
            //         //  margin: EdgeInsets.only(left:5,right: 5),
            //         width: 171,
            //         height: 112,
            //         decoration: BoxDecoration(
            //             color: Colors.grey,
            //             borderRadius: BorderRadius.circular(10),
            //             image: DecorationImage(
            //                 image: AssetImage('assets/images/u3.png'),
            //                 fit: BoxFit.cover)),
            //       ),
            //     ));
            //   },
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       childAspectRatio: MediaQuery.of(context).size.width / 248,
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //       crossAxisCount: 2),
            // ),
          ],
        ),
        SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: Get.mediaQuery.size.width * 0.475,
              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/images/u7.png'), fit: BoxFit.cover)),
            ),
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: Get.mediaQuery.size.width * 0.475,
              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/images/u6.png'), fit: BoxFit.cover)),
            ),
          ],
        ),
        SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: Get.mediaQuery.size.width * 0.475,
              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/images/u8.png'), fit: BoxFit.cover)),
            ),
            Container(
              //  margin: EdgeInsets.only(left:5,right: 5),
              width: Get.mediaQuery.size.width * 0.475,

              height: 112,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage('assets/images/u9.png'), fit: BoxFit.cover)),
            ),
          ],
        ),
        SizedBox(height: 17),
      ],
    );
  }
}
