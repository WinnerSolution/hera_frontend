import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/FeedPage/FeedPage.controller.dart';
import 'package:hera_app/app/Pages/FeedPage/widgets/PostFeedItem.dart';
import 'package:hera_app/components/widgets/ItemSliverListWidget.dart';
import 'package:hera_app/themes/styles.dart';

class FeedPage extends StatelessWidget {
  FeedPageController get con => Get.put(FeedPageController());

  // final bool fav = true;
  // bool fav1 = false;
  // bool fav2 = false;
  @override
  Widget build(BuildContext context) {
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
            child: buildSearchField().paddingOnly(bottom: 30, top: 10),
          ),
          buildPostSection()
        ],
      ),

      // Column(
      //   children: <Widget>[
      //     SizedBox(height: 10),
      //     buildSearchField(),
      //     SizedBox(height: 10),
      //     // buildStorySection(),
      //     // SizedBox(height: 20),
      //     Expanded(
      //       child: Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 13.0),
      //         child: buildPostSection(),
      //       ),
      //     ),
      //     SizedBox(height: 20),
      //   ],
      // ),
    );
  }

  Widget buildSearchField() {
    return InkWell(
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
    );
  }

  Widget buildPostSection() {
    return Obx(() => ItemSliverListWidget(
          itemCreated: con.handleListItemCreation,
          itemCount: con.postCollection.data().length,
          crossAxisCount: 1,
          childAspectRatio: 1.1,
          itemBuilder: (index) {
            var record = con.postCollection.data()[index];
            return PostFeedItem(post: record).paddingSymmetric(horizontal: 5, vertical: 10);
          },
        ));

    // Container(
    //   // margin: EdgeInsets.only(left: 5, right: 5.0),
    //   width: Get.mediaQuery.size.width,
    //   decoration: BoxDecoration(
    //       // border: Border.all(color:Colors.grey)
    //       borderRadius: BorderRadius.circular(15)),
    //   child: Column(
    //     // scrollDirection: Axis.vertical,
    //     children: con.postCollection.data
    //         .map(
    //           (e) => buildPost(e).paddingSymmetric(vertical: 5),
    //         )
    //         .toList(),
    //   ),
    // );
  }

  //!

}
