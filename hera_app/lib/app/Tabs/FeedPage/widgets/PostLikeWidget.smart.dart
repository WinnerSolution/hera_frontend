import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Tabs/FeedPage/widgets/PostStatsWidget.smart.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';

class PostLikeWidgetController extends BaseController {
  final String postId;

  PostLikeWidgetController({@required this.postId});

  final postLiked = false.obs;
  StreamSubscription _sub;

  static String get userId => AppController.find.user().getId();

  toggleLike() {
    postLiked.toggle();

    //
    var _c = Get.find<PostStatsController>(tag: postId);
    _c.postStats(_c.postStats().incremetLikes(postLiked() ? 1 : -1));

    //
    firestore.save<TLike>(TLike(
      postId: postId,
      userId: userId,
      like: postLiked(),
    ));
  }

  @override
  onInit() {
    _sub = firestore //
        .get<TLike>(postId + '_' + userId, reactive: true)
        .listen((event) {
      postLiked(event?.like ?? false);
    });

    super.onInit();
  }

  @override
  void onClose() {
    _sub.cancel();
  }
}

class PostLikeWidget extends StatelessWidget {
  final TPost post;

  PostLikeWidget({
    Key key,
    this.post,
  }) : super(key: key);

  PostLikeWidgetController get con => Get.put(
        PostLikeWidgetController(postId: post.getId()),
        tag: post.getId() + '_' + PostLikeWidgetController.userId,
      );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
          onTap: () => con.toggleLike(),
          child: Icon(
            Icons.favorite,
            size: 30,
            color: con.postLiked() ? Colors.red : Colors.grey[300],
          )),
    );
  }
}
