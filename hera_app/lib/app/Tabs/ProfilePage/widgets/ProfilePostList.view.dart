import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/PostDetailsPage/PostDetailsPage.dart';
import 'package:hera_app/app/Tabs/ProfilePage/widgets/PostItemWidget.dart';
import 'package:hera_app/app/Widgets/ItemSliverListWidget.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';

class ProfilePostListViewController extends CollectionController<TPost> {
  ProfilePostListViewController(String postId)
      : super(
          firestore.collection<TPost>(),
          filter: Filter() //
              .$filter$eq('createdBy', postId)
              .$orderBy('updatedAt', desc: true),
          options: CollectionOptions(pageSize: 20),
        );

  void handlePostOnTap(int index) => Get.to(() => PostDetails(collection.data()[index]));
}

class ProfilePostListView extends BaseView<ProfilePostListViewController> {
  final String profileId;

  ProfilePostListView(this.profileId, {Key key}) : super(key: key);

  @override
  ProfilePostListViewController init() => ProfilePostListViewController(profileId);

  @override
  String get tag => profileId;

  @override
  Widget builder(con) {
    return ItemSliverListWidget(
      itemCreated: con.handleListItemCreation,
      itemCount: con.collection.data().length,
      crossAxisCount: 2,
      childAspectRatio: 1.2,
      itemBuilder: (index) {
        var record = con.collection.data()[index];
        return PostItemWidget(
          product: record,
          onTap: () => con.handlePostOnTap(index), //con.openProductForm(record),
          // onImageTap: () => null, //con.openMediaManager(record),
          // toggleInStock: (newValue) => null,
        );
      },
    );
  }
}
