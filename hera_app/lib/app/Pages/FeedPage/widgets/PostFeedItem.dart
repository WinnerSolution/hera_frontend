import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/FeedPage/widgets/PostStatsWidget.smart.dart';
import 'package:hera_app/app/Pages/PostDetailsPage/PostDetailsPage.dart';
import 'package:hera_core/hera_core.dart';
import 'package:velocity_x/velocity_x.dart';

class PostFeedItem extends StatelessWidget {
  final TPost post;

  const PostFeedItem({
    Key key,
    @required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.19))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              // width: Get.mediaQuery.size.width,
              // height: 315,

              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),

                // image: DecorationImage(
                //   image: (post?.images == null || post.images.isEmpty)
                //       ? AssetImage('assets/images/user.png')
                //       : CachedNetworkImageProvider(post.images[0].url),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                child: Image(
                  image: (post?.images == null || post.images.isEmpty)
                      ? AssetImage('assets/images/user.png')
                      : CachedNetworkImageProvider(
                          post.images[0].url,
                        ),
                  fit: BoxFit.cover,
                ),
              ),
            )
                // .box
                // .roundedFull
                // .make() //
                .onTap(() => Get.to(() => PostDetails(post))),
          ),
          SizedBox(height: 10),
          PostStatsWidget(post: post),
        ],
      ),
    );
  }
}
