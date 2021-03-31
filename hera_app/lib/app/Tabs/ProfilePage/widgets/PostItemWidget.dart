import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hera_core/hera_core.dart';
import 'package:velocity_x/velocity_x.dart';

var defaultImage =
    'https://firebasestorage.googleapis.com/v0/b/softi-dev.appspot.com/o/product_food_default.png?alt=media&token=6b20d0d6-92c1-43dd-843d-6e7165bbcbc2';

class PostItemWidget extends StatelessWidget {
  final TPost product;

  // final void Function(bool) toggleInStock;
  final VoidCallback onTap;
  // final VoidCallback onImageTap;

  const PostItemWidget({
    Key key,
    this.product,
    // this.toggleInStock,
    this.onTap,
    // this.onImageTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        //  margin: EdgeInsets.only(left:5,right: 5),
        // width: Get.mediaQuery.size.width * 0.475,
        // height: 150,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                  (product.images?.isEmpty ?? true) //
                      ? defaultImage
                      : product.images[0].url,
                ),
                fit: BoxFit.cover)),
      ).p4(),
    ).onInkTap(
      onTap,
    );
  }
}
