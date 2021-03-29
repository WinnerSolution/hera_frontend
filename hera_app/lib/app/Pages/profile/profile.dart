import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/app/Pages/ProfileForm/ProfileForm.dart';
import 'package:hera_app/app/Pages/profile/profile.controller.dart';
import 'package:hera_app/app/Pages/profile/widgets/PostItemWidget.dart';
import 'package:hera_app/components/widgets/ItemSliverListWidget.dart';
import 'package:hera_app/screens/OtherPages/chat/chat.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:softi_common/core.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatelessWidget {
  final String profileId;
  final bool isTab;
  // final ProfileController controller;

  Profile(
    this.profileId, {
    this.isTab = true,
    Key key,
  }) : super(key: key);

  ProfileController get con {
    return Get.put<ProfileController>(ProfileController(profileId), tag: profileId);
  }

  @override
  Widget build(BuildContext context) {
    return LoadingStatusWidget(
      controller: con,
      errorWidget: () => Center(
        child: [
          'Error'.text.textStyle(textArialRegularsecondary()).make(),
          ElevatedButton(
            onPressed: () => con.loadUserData(),
            child: 'Retry'.text.make(),
          )
        ].column(),
      ),
      loadingWidget: () => Center(child: CircularProgressIndicator()),
      builder: () => PlatformScaffold(
        backgroundColor: Colors.white,
        // appBar:
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              // expandedHeight: 500,
              // flexibleSpace: FlexibleSpaceBar(title: ),
              title: Text(
                'Profile',
                style: textArialBoldsecondary(),
              ),
              automaticallyImplyLeading: false,
              leading: (isTab)
                  ? null
                  : InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        "assets/icons/backarrow.png",
                        scale: 3,
                        color: secondary,
                      ),
                    ),
              // actions: <Widget>[
              //   if (isTab)
              //     Padding(
              //       padding: const EdgeInsets.only(right: 20.0),
              //       child: Image.asset(
              //         'assets/icons/menuicon.png',
              //         width: 20,
              //         height: 20,
              //       ),
              //     )
              // ],
              backgroundColor: Colors.white,
              // iconTheme: IconThemeData(color: secondary),
              // elevation: 0.3,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  buildProfileCard(),
                  // SizedBox(height: 44),
                  // buildPhotoGrid(),
                ],
              ),
              // children:
            ),
            buildPostList(),
            // PostListWidget(profileId),
          ],
        ),
      ),
    );
  }

  Widget buildPostList() {
    return ItemSliverListWidget(
      itemCreated: con.handleListItemCreation,
      itemCount: con.collection.data().length,
      itemBuilder: (index) {
        var record = con.collection.data()[index];
        return PostItemWidget(
          product: record,
          onImageTap: () => null, //con.openMediaManager(record),
          onTap: () => null, //con.openProductForm(record),
          toggleInStock: (newValue) => null,
        );
      },
    );
  }

  Widget buildProfileCard() {
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
                image: DecorationImage(image: CachedNetworkImageProvider(con.profileImage1), fit: BoxFit.cover)),
            child: Container(),
          ),
          SizedBox(height: 10),
          Text(
            con.userProfile?.fullname ?? '',
            style: textArialBoldlgSecondary(),
          ),
          Text(
            con.userProfile?.status ?? '',
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
                    con.userStats.likesCount.toString(),
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
                    con.userStats.postsCount.toString(),
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
                    con.userStats.followersCount.toString(),
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
                    con.userStats.followingCount.toString(),
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          if (con.isConnectedUser)
            Container(
              width: 335,
              height: 44,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Get.to(() => EditProfile(con.userProfile));

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
          if (con.isConnectedUser)
            GFButton(
              type: GFButtonType.transparent,
              text: 'Sign Out from Hera',
              color: GFColors.ALT,
              onPressed: () => con.logout(),
            ),

          // if (con.isConnectedUser)
          if (!con.isConnectedUser)
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
