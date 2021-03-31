import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Tabs/ProfilePage/ProfilePage.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/resource.dart';
import 'package:velocity_x/velocity_x.dart';

class UserSnippetController extends RecordController<TUser> {
  UserSnippetController(
    String userId, {
    reactive: true,
  }) : super(userId, firestore, reactive: reactive);

  Rx<TUser> get user => record;

  String getUserName() {
    if (AppController.find.isConnectedUser(recordId)) {
      return 'me';
    } else {
      return user()?.fullname ?? '';
    }
  }

  //! handlers
  handleProfileImageOnClic() => Get.to(() => ProfilePage(record().getId()));
}

class UserSnippetView extends StatelessWidget {
  const UserSnippetView(
    this.userId, {
    this.rightText,
    this.bottomText,
    Key key,
  }) : super(key: key);

  final String userId, rightText, bottomText;

  UserSnippetController get con {
    return Get.put(UserSnippetController(userId), tag: userId);
  }

  @override
  Widget build(BuildContext context) {
    var child = Obx(() => Container(
          margin: EdgeInsets.only(left: 20, right: 15, bottom: 12, top: 12),
          // padding: EdgeInsets.only(bottom: 15),
          // decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: con.user()?.profileImage != null
                        ? CachedNetworkImageProvider(con.user().profileImage.url)
                        : AssetImage('assets/images/user1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ).onInkTap(con.handleProfileImageOnClic),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            con.getUserName(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: textArialBoldSecondary(),
                          ),
                        ),

                        //! rightSlot
                        Container(
                          child: Text(
                            rightText ?? '',
                            style: textArialRegularsecondarysmwithop(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    //! bottomSlot
                    Container(
                      child: Text(
                        bottomText ?? '',
                        style: textArialRegularcSecondary(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));

    return child;
  }
}
