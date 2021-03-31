import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/CommentsPage/CommentsPage.dart';
import 'package:hera_app/app/Tabs/FeedPage/widgets/PostLikeWidget.smart.dart';
import 'package:hera_app/app/Views/UserSnippetView.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:velocity_x/velocity_x.dart';

class PostStatsController extends RecordController<TPostStats> with TimerControllerMixin {
  final TPost post;
  PostStatsController(this.post) : super(post.getId(), firestore);

  Rx<TPostStats> get postStats => record;

  @override
  Duration get interval => 1.minutes;

  @override
  void onInit() {
    startTimer();
    super.onInit();
  }

  @override
  void onClose() {
    stopTimer();
    super.onClose();
  }
}

class PostStatsWidget extends BaseView<PostStatsController> {
  const PostStatsWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final TPost post;

  @override
  init() => PostStatsController(post);

  @override
  String get tag => post.getId();

  @override
  Widget builder(con) {
    var child = Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 200,
            child: ObxValue<Rx<DateTime>>((Rx<DateTime> clock) {
              print(clock);
              return UserSnippetView(con.post.createdBy,
                  bottomText: post.updatedAt != null ? timeago.format(post.updatedAt, locale: 'en') : '');
            }, con.clock),
            // rightText: '',
          ),
          Column(
            children: <Widget>[
              PostLikeWidget(post: post),
              Text(
                con.postStats()?.likesCount.toString() ?? '',
                style: textArialRegularsecondarysmwithop(),
              )
            ],
          ).p8(),
          Column(
            children: <Widget>[
              Image.asset('assets/icons/comment.png', width: 30, height: 30),
              Text(
                con.postStats()?.commentsCount.toString() ?? '',
                style: textArialRegularsecondarysmwithop(),
              )
            ],
          ).p8().onTap(() => Get.to(() => CommentsPage(post))),
          Column(
            children: <Widget>[
              Image.asset('assets/icons/share.png', width: 30, height: 30),
              Text(
                '123',
                style: textArialRegularsecondarysmwithop(),
              )
            ],
          ).p8(),
        ],
      ),
    );

    return child;
  }
}
