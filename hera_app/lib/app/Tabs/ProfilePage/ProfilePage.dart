import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Tabs/ProfilePage/widgets/ProfileCard.view.dart';
import 'package:hera_app/app/Tabs/ProfilePage/widgets/ProfilePostList.view.dart';
import 'package:hera_app/themes/styles.dart';

class ProfilePage extends StatelessWidget {
  final String profileId;
  final bool isTab;

  ProfilePage(
    this.profileId, {
    this.isTab = true,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
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
              background: ProfileCardView(profileId).paddingOnly(top: 60),
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
          ProfilePostListView(profileId),
        ],
      ),
    );
  }
}
