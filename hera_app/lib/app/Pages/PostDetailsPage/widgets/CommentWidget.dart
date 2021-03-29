import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentWidgetController extends BaseController {
  final String commentUserId;
  final Rx<TUser> user = TUser().obs;

  CommentWidgetController(this.commentUserId);

  void getUserSnippet(userId) {
    user.bindStream(firestore.get<TUser>(userId, reactive: false));
  }

  @override
  void onReady() {
    getUserSnippet(commentUserId);
    super.onReady();
  }
}

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key key,
    @required this.comment,
  }) : super(key: key);

  final TComment comment;

  CommentWidgetController get con {
    return Get.put(CommentWidgetController(comment.userId), tag: comment.userId);
  }

  @override
  Widget build(BuildContext context) {
    var child = Obx(() => Container(
          // width: Get.mediaQuery.size.width,
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
                      image: AssetImage('assets/images/user1.png'),
                    )),
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

                        Container(
                          // width: 170,
                          child: Text(
                            comment.updatedAt != null ? timeago.format(comment.updatedAt, locale: 'en') : '',
                            style: textArialRegularsecondarysmwithop(),
                          ),
                        ),

                        // Container(
                        //   width: Get.mediaQuery.size.width * 0.4,
                        //   child: Text(
                        //     record.comment,
                        //     style: textArialRegularcSecondary(),
                        //     maxLines: 2,
                        //     overflow: TextOverflow.ellipsis,
                        //   ),
                        // )
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: <Widget>[
                        // Container(
                        //   // width: Get.mediaQuery.size.width * 0.25,
                        //   child: Text(
                        //     'John johny',
                        //     maxLines: 2,
                        //     overflow: TextOverflow.ellipsis,
                        //     style: textArialBoldSecondary(),
                        //   ),
                        // ),
                        Container(
                          width: Get.mediaQuery.size.width * 0.8,
                          child: Text(
                            comment.comment,
                            style: textArialRegularcSecondary(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
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
