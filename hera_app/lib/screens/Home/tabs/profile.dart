import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/forms/ProfileForm.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_app/screens/OtherPages/editprofile/editprofile.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';

class ProfileController extends BaseController {
  final maxImageWidth = 640;

  ProfileController();

  Rx<TUser> get user => AppState.find.user;
  Rx<AuthUser> get authUser => AppState.find.authUser;

  String get profileImage =>
      AppState.find.user().profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  // /// Alters the actual image
  // Future<File> changeImage1(Widget modal) async {
  //   final ImagePicker _picker = ImagePicker();

  //   File response;
  //   ImageSource type = await Get.bottomSheet(modal);
  //   if (type != null) {
  //     final PickedFile _picked = await _picker.getImage(source: type);
  //     if (_picked != null) {
  //       response = File(_picked.path);
  //     }
  //   }
  //   return response;
  // }

  //
  @override
  onInit() {
    busy.listen((isBusy) {
      if (isBusy)
        loading.showStatus();
      else
        loading.dismiss();
    });
    super.onInit();
  }

  void handleEditProfilePressed() => Get.to(() => ProfileForm(AppState.find.user()));
  void handleAddProductPressed() => Get.to(() => ProductForm(product: TProduct()));
}

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
            SizedBox(height: 10),
            buildPhotoGrid(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileCard() {
    return Stack(
      children: <Widget>[
        Container(
          width: Get.mediaQuery.size.width,
          height: Get.mediaQuery.size.height * 0.5,
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
                  child: Image.asset('')),
              Text(
                'Sansa Stark',
                style: textArialBoldlgSecondary(),
              ),
              Text(
                'Westeros, Seven Kingdoms',
                style: textArialRegularsecondarydull(),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Photos',
                        style: textArialRegularsecondarydull(),
                      ),
                      Text(
                        '1234',
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
                        '1234',
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
                        '1234',
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
              )
            ],
          ),
        ),
        Positioned(
            right: 25,
            top: 20,
            child: Image.asset(
              'assets/icons/menuicon.png',
              width: 20,
              height: 20,
            ))
      ],
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
