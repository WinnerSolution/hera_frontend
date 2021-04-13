import 'package:flutter/material.dart';
import 'package:hera_app/app/Pages/CommentsPage/CommentList.view.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';

class CommentsPageControler extends BaseViewController {
  @override
  // ignore: must_call_super
  Future<void> onViewInit() async => null;

  @override
  // ignore: must_call_super
  Future<void> onViewClose() async => null;
}

class CommentsPage extends BaseView<CommentsPageControler> {
  final TPost post;

  CommentsPage(this.post);

  @override
  CommentsPageControler init() => CommentsPageControler();

  @override
  String get tag => null;

  @override
  Widget builder(controller) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Comments',
          style: textArialBoldsecondary(),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: secondary),
        elevation: 0.3,
        leading: InkWell(
          onTap: controller.navigateBack,
          child: Image.asset(
            'assets/icons/backarrow.png',
            scale: 3,
            color: secondary,
          ),
        ),
      ),
      body: CommentListView(post),
    );
  }
}
