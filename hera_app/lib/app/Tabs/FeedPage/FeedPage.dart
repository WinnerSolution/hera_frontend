import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Tabs/FeedPage/FeedPage.controller.dart';
import 'package:hera_app/app/Tabs/FeedPage/widgets/PostFeedItem.dart';
import 'package:hera_app/components/widgets/ItemSliverListWidget.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:softi_common/core.dart';

class FeedPage extends BaseView<FeedPageController> {
  @override
  init() => FeedPageController();

  @override
  Widget builder(controller) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Row(
              children: <Widget>[
                Text(
                  ' Hera',
                  style: textArialBoldprimary(),
                ),
                Text(
                  ' Wishes',
                  style: textArialBoldsecondary(),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: InkWell(
              onTap: () => null, //Get.to(() => PostStatus()),
              child: Container(
                // width: 335,
                height: 55,
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 5)]),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/icons/searchfield.png',
                      width: 35,
                      height: 35,
                    ),
                    Text("What's on your mind?", style: textArialRegularsecondarywithop())
                  ],
                ),
              ),
            ).paddingOnly(bottom: 30, top: 10),
          ),
          ItemSliverListWidget(
            itemCreated: controller.handleListItemCreation,
            itemCount: controller.collection.data().length,
            crossAxisCount: 1,
            childAspectRatio: 1.1,
            itemBuilder: (index) {
              var record = controller.collection.data()[index];
              return PostFeedItem(post: record).paddingSymmetric(horizontal: 5, vertical: 10);
            },
          ),
          Obx(() => SliverToBoxAdapter(
                child: Center(
                  child: controller.isResourceLoading() ? CircularProgressIndicator() : Container(),
                ),
              )),
        ],
      ),
    );
  }
}
