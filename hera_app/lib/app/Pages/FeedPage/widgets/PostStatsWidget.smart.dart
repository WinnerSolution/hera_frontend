import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/CommentsPage/CommentsPage.dart';
import 'package:hera_app/app/Pages/FeedPage/widgets/PostLikeWidget.smart.dart';
import 'package:hera_app/app/Pages/ProfilePage/ProfilePage.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostStatsController extends BaseController {
  final TPost post;
  final Rx<TUser> user = TUser().obs;
  final Rx<TPostStats> postStats = TPostStats().obs;
  final postLiked = false.obs;

  StreamSubscription<TUser> _sub1;
  StreamSubscription<TPostStats> _sub2;

  PostStatsController(this.post);

  void getUserSnippet() {
    _sub1 = firestore.get<TUser>(post.createdBy, reactive: false).listen((_user) {
      return user(_user);
    }); //, reactive: false));
  }

  void getPostStats() {
    _sub2 = firestore.get<TPostStats>(post.getId(), reactive: true).listen((_postStats) {
      return postStats(_postStats);
    }); //, reactive: false));
  }

  @override
  void onReady() {
    getUserSnippet();
    getPostStats();
    super.onReady();
  }

  @override
  void onClose() {
    _sub1.cancel();
    _sub2.cancel();
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
    return Get.put(PostStatsController(post), tag: post.getId());
  }

  @override
  Widget build(BuildContext context) {
    var child = Obx(() {
      return Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: con.user()?.profileImage != null
                        ? CachedNetworkImageProvider(con.user().profileImage.url)
                        : AssetImage('assets/images/user1.png'),
                    fit: BoxFit.cover),
              ),
            ).onInkTap(() {
              Get.to(() => ProfilePage(con.user()?.getId(), isTab: false));
            }),
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
                  con.postStats().likesCount.toString(),
                  style: textArialRegularsecondarysmwithop(),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
              child: InkWell(
                onTap: () => Get.to(() => CommentsPage(post)),
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
    });

    return child;
  }
}
