import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/NewLikesPage/widgets/LikeList.view.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';

class LikesPageControler extends BaseViewController {
  @override
  Future<void> loadView() async => null;
}

class LikesPage extends BaseView<LikesPageControler> {
  final TPost post;

  LikesPage(this.post);

  @override
  LikesPageControler init() => LikesPageControler();

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
          onTap: () => Get.back(),
          child: Image.asset(
            'assets/icons/backarrow.png',
            scale: 3,
            color: secondary,
          ),
        ),
      ),
      body: LikeListView(post),
    );
  }
}
