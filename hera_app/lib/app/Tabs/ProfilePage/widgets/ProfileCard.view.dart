import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/app/Forms/ProfileForm/ProfileForm.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';

class ProfileCardController extends RecordController<TUser> {
  ProfileCardController(
    this.profileId,
  ) : super(firestore.record<TUser>(), id: profileId, reactive: true);

  final String profileId;
  final Rx<TUserStats> _userStats = Rx<TUserStats>(TUserStats());

  @override
  void onInit() {
    super.onInit();
    _userStats.bindStream(firestore.api<TUserStats>().get(profileId));
  }

  //! Getters
  TUserStats get userStats => _userStats();
  TUser get userProfile => record();
  bool get isConnectedUser => AppController.find.isConnectedUser(profileId);

  String get profileImage =>
      userProfile?.profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  //! Handlers
  void handleEditProfilePressed() => Get.to(() => ProfileForm(AppController.find.user()));
  void handleOnLogout() => () => AppController.find.logout();
}

class ProfileCardView extends BaseView<ProfileCardController> {
  final String profileId;

  @override
  ProfileCardController init() => ProfileCardController(profileId);

  @override
  String get tag => profileId;

  const ProfileCardView(this.profileId, {Key key}) : super(key: key);

  @override
  Widget builder(controller) {
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
                image: DecorationImage(image: CachedNetworkImageProvider(controller.profileImage), fit: BoxFit.cover)),
            child: Container(),
          ),
          SizedBox(height: 10),
          Text(
            controller.userProfile?.fullname ?? '',
            style: textArialBoldlgSecondary(),
          ),
          Text(
            controller.userProfile?.status ?? '',
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
                    controller.userStats?.likesCount.toString() ?? '',
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
                    controller.userStats?.postsCount.toString() ?? '',
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
                    controller.userStats?.followersCount.toString() ?? '',
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
                    controller.userStats?.followingCount.toString() ?? '',
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          if (controller.isConnectedUser)
            Container(
              width: 335,
              height: 44,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: controller.handleEditProfilePressed,
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
          if (controller.isConnectedUser)
            GFButton(
              type: GFButtonType.transparent,
              text: 'Sign Out from Hera',
              color: GFColors.ALT,
              onPressed: controller.handleOnLogout,
            ),

          // if (con.isConnectedUser)
          if (!controller.isConnectedUser)
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
                    padding: EdgeInsets.only(left: 20, right: 20),
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
                  ),
                ),
                // Container(
                //   height: 40,
                //   // ignore: deprecated_member_use
                //   child: RaisedButton(
                //     onPressed: () {
                //       Navigator.push(
                //         Get.context,
                //         MaterialPageRoute(builder: (context) => Chat()),
                //       );
                //     },
                //     color: Colors.transparent,
                //     elevation: 0,
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: secondary)),
                //     child: Text(
                //       'Message',
                //       style: textArialRegularlgsecondary(),
                //     ),
                //   ),
                // ),
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
