import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/FeedPage/widgets/PostLikeWidget.smart.dart';
import 'package:hera_app/screens/OtherPages/comments/comments.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostStatsController extends BaseController {
  final String userId;
  final Rx<TUser> user = TUser().obs;
  final postLiked = false.obs;

  StreamSubscription<TUser> _sub;
  PostStatsController(this.userId);

  void getUserSnippet() {
    _sub = firestore.get<TUser>(userId, reactive: false).listen((_user) {
      return user(_user);
    }); //, reactive: false));
  }

  @override
  void onReady() {
    getUserSnippet();
    super.onReady();
  }

  @override
  void onClose() {
    _sub.cancel();
    super.onClose();
  }
}

class PostStatsWidget extends StatelessWidget {
  const PostStatsWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final TPost post;

  PostStatsController get con {
    return Get.put(PostStatsController(post.createdBy), tag: post.createdBy);
  }

  @override
  Widget build(BuildContext context) {
    var child = Obx(() {
      return Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        width: Get.mediaQuery.size.width * 0.93,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: con.user()?.profileImage != null
                        ? CachedNetworkImageProvider(con.user().profileImage.url)
                        : AssetImage('assets/images/user1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 25.0, left: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: Get.mediaQuery.size.width * 0.29,
                    child: Text(
                      con.user()?.fullname ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textArialBoldSecondary(),
                    ),
                  ),
                  Text(
                    post.updatedAt != null ? timeago.format(post.updatedAt, locale: 'en') : '',
                    style: textArialRegularsecondarysmwithop(),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                PostLikeWidget(post: post),
                Text(
                  '123',
                  style: textArialRegularsecondarysmwithop(),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
              child: InkWell(
                onTap: () => Get.to(() => Comments()),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/icons/comment.png', width: 30, height: 30),
                    Text(
                      '123',
                      style: textArialRegularsecondarysmwithop(),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/icons/share.png', width: 30, height: 30),
                  Text(
                    '123',
                    style: textArialRegularsecondarysmwithop(),
                  )
                ],
              ),
            ),
          ],
        ),
      );

      // return Container(
      //   // width: Get.mediaQuery.size.width,
      //   margin: EdgeInsets.only(left: 20, right: 15, bottom: 15),
      //   padding: EdgeInsets.only(bottom: 15),
      //   decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
      //   child: Row(
      //     children: [
      //       Container(
      //         height: 40,
      //         width: 40,
      //         decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(50),
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/user1.png'),
      //             )),
      //       ),
      //       SizedBox(width: 8),
      //       Expanded(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: <Widget>[
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: <Widget>[
      //                 Container(
      //                   // width: Get.mediaQuery.size.width * 0.25,
      //                   child: Text(
      //                     con.user()?.fullname ?? '',
      //                     maxLines: 2,
      //                     overflow: TextOverflow.ellipsis,
      //                     style: textArialBoldSecondary(),
      //                   ),
      //                 ),

      //                 Container(
      //                   // width: 170,
      //                   child: Text(
      //                     comment.updatedAt != null ? timeago.format(comment.updatedAt, locale: 'en') : '',
      //                     style: textArialRegularsecondarysmwithop(),
      //                   ),
      //                 ),

      //                 // Container(
      //                 //   width: Get.mediaQuery.size.width * 0.4,
      //                 //   child: Text(
      //                 //     record.comment,
      //                 //     style: textArialRegularcSecondary(),
      //                 //     maxLines: 2,
      //                 //     overflow: TextOverflow.ellipsis,
      //                 //   ),
      //                 // )
      //               ],
      //             ),
      //             SizedBox(height: 3),
      //             Row(
      //               children: <Widget>[
      //                 // Container(
      //                 //   // width: Get.mediaQuery.size.width * 0.25,
      //                 //   child: Text(
      //                 //     'John johny',
      //                 //     maxLines: 2,
      //                 //     overflow: TextOverflow.ellipsis,
      //                 //     style: textArialBoldSecondary(),
      //                 //   ),
      //                 // ),
      //                 Container(
      //                   width: Get.mediaQuery.size.width * 0.8,
      //                   child: Text(
      //                     comment.comment,
      //                     style: textArialRegularcSecondary(),
      //                     maxLines: 2,
      //                     overflow: TextOverflow.ellipsis,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // );
    });

    // return GFShimmer(
    //     child: Container(
    //   // width: Get.mediaQuery.size.width,
    //   // margin: EdgeInsets.only(left: 20, right: 15, bottom: 15),
    //   // padding: EdgeInsets.only(bottom: 15),
    //   height: 40,
    //   // decoration: BoxDecoration(
    //   //   border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04))),
    //   // ),
    // ));

    return child;
  }
}
