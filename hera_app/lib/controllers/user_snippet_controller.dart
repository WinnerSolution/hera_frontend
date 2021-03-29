import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';

class UserSnippetController extends BaseController {
  final String userId;
  final bool reactive;
  UserSnippetController(this.userId, {this.reactive: true});

  final Rx<TUser> user = TUser().obs;

  void getUserSnippet(userId) {
    user.bindStream(firestore.get<TUser>(userId, reactive: reactive));
  }

  @override
  void onInit() {
    getUserSnippet(userId);
    super.onInit();
  }
}

class UserSnippetWidget extends StatelessWidget {
  const UserSnippetWidget(
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
          margin: EdgeInsets.only(left: 20, right: 15, bottom: 15),
          padding: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
          child: Row(
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
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          // width: Get.mediaQuery.size.width * 0.25,
                          child: Text(
                            con.user()?.fullname ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: textArialBoldSecondary(),
                          ),
                        ),

                        //! rightSlot
                        Container(
                          // width: 170,
                          child: Text(
                            rightText,
                            style: textArialRegularsecondarysmwithop(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 3),
                    Container(
                      width: Get.mediaQuery.size.width * 0.8,
                      child: Text(
                        bottomText,
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
