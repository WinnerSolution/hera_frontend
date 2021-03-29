import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/app/Pages/ProfileForm/ProfileForm.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_app/screens/OtherPages/chat/chat.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';

class ProfileCardWidget extends StatelessWidget {
  final TUser userProfile;
  final TUserStats userStats;
  final bool isConnectedUser;

  const ProfileCardWidget({
    Key key,
    @required this.userProfile,
    @required this.userStats,
    @required this.isConnectedUser,
  }) : super(key: key);

  String get profileImage1 =>
      userProfile.profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.mediaQuery.size.width,
      // height: Get.mediaQuery.size.height * 0.5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
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

          SizedBox(height: 25),

          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: CachedNetworkImageProvider(profileImage1), fit: BoxFit.cover)),
            child: Container(),
          ),
          SizedBox(height: 10),
          Text(
            userProfile?.fullname ?? '',
            style: textArialBoldlgSecondary(),
          ),
          Text(
            userProfile?.status ?? '',
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
                    userStats.likesCount.toString(),
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
                    userStats.postsCount.toString(),
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
                    userStats.followersCount.toString(),
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
                    userStats.followingCount.toString(),
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          if (isConnectedUser)
            Container(
              width: 335,
              height: 44,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Get.to(() => EditProfile(userProfile));

                  // Navigator.push(
                  //   Get.context,
                  //   MaterialPageRoute(builder: (context) => EditProfile()),
                  // );
                },
                color: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: secondary)),
                child: Text(
                  'Edit Profile',
                  style: textArialRegularlgsecondary(),
                ),
              ),
            ),
          if (isConnectedUser)
            GFButton(
              type: GFButtonType.transparent,
              text: 'Sign Out from Hera',
              color: GFColors.ALT,
              onPressed: () => AppState.find.logout(),
            ),

          // if (con.isConnectedUser)
          if (!isConnectedUser)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 40,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: primary,
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/addfriend.png',
                          color: Colors.white,
                        ),
                        Text(
                          'Follow',
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
                        borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: secondary)),
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
}
