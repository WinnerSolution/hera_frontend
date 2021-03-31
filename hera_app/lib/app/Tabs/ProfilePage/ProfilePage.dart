import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Tabs/ProfilePage/ProfilePage.controller.dart';
import 'package:hera_app/app/Tabs/ProfilePage/widgets/PostItemWidget.dart';
import 'package:hera_app/app/Tabs/ProfilePage/widgets/ProfileCardWidget.dart';
import 'package:hera_app/components/widgets/ItemSliverListWidget.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:softi_common/core.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  final String profileId;
  final bool isTab;
  // final ProfileController controller;

  ProfilePage(
    this.profileId, {
    this.isTab = true,
    Key key,
  }) : super(key: key);

  ProfilePageController get con {
    return Get.put<ProfilePageController>(ProfilePageController(profileId), tag: profileId);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return con.loadView();
      },
      child: LoadingStatusWidget(
        controller: con,
        errorWidget: () => Center(
          child: [
            'Error'.text.textStyle(textArialRegularsecondary()).make(),
            ElevatedButton(
              onPressed: () => con.loadView(),
              child: 'Retry'.text.make(),
            )
          ].column(),
        ),
        loadingWidget: () => Center(child: CircularProgressIndicator()),
        builder: () => PlatformScaffold(
          backgroundColor: Colors.white,
          // appBar:
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                floating: true,
                snap: true,
                expandedHeight: 424,
                flexibleSpace: FlexibleSpaceBar(
                  background: ProfileCardWidget(
                    userProfile: con.userProfile,
                    userStats: con.userStats,
                    isConnectedUser: con.isConnectedUser,
                    onPressed: con.handleOnPressedEditUser,
                    onLogout: con.handleOnLogout,
                  ).paddingOnly(top: 60),
                  centerTitle: true,
                  stretchModes: [StretchMode.blurBackground, StretchMode.zoomBackground, StretchMode.fadeTitle],
                  collapseMode: CollapseMode.parallax,
                ),
                automaticallyImplyLeading: false,
                leading: (isTab)
                    ? null
                    : InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(
                          'assets/icons/backarrow.png',
                          scale: 3,
                          color: secondary,
                        ),
                      ),
                backgroundColor: Colors.white,
              ),

              ItemSliverListWidget(
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
              ),
              // PostListWidget(profileId),
            ],
          ),
        ),
      ),
    );
  }
}
