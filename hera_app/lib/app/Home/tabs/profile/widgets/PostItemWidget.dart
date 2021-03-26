import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_core/hera_core.dart';
import 'package:velocity_x/velocity_x.dart';

var defaultImage =
    'https://firebasestorage.googleapis.com/v0/b/softi-dev.appspot.com/o/product_food_default.png?alt=media&token=6b20d0d6-92c1-43dd-843d-6e7165bbcbc2';

class PostItemWidget extends StatelessWidget {
  final TProduct product;

  final void Function(bool) toggleInStock;
  final VoidCallback onTap;
  final VoidCallback onImageTap;

  PostItemWidget({
    Key key,
    this.product,
    this.toggleInStock,
    this.onTap,
    this.onImageTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //  margin: EdgeInsets.only(left:5,right: 5),
      width: Get.mediaQuery.size.width * 0.475, height: 112,
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
    ).p4();

    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: onImageTap,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    image: CachedNetworkImageProvider(
                      (product.images?.isEmpty ?? true) //
                          ? defaultImage
                          : product.images[0].url,
                    ),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              SizedBox(
                width: 16.0,
              ),
              InkWell(
                onTap: onTap,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      product.title ?? '--  ',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          'Veg:'.text.make(),
                          10.0.heightBox,
                          Image.asset(
                            // 'assets/images/ic_veg.png',
                            'assets/images/ic_nonveg.png',
                            height: 16.0,
                            width: 16.7,
                          ),
                          10.0.heightBox,
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text('\$ ${product.price.toString()}', style: Theme.of(context).textTheme.caption),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Positioned.directional(
          //   end: 0.0,
          //   bottom: 8.0,
          //   textDirection: Directionality.of(context),
          //   child: Row(
          //     children: [
          //       Text(
          //         '${Translated.stock}',
          //         style: TextStyle(fontSize: 13.3, fontWeight: FontWeight.bold),
          //       ),
          //       Switch(
          //         activeColor: kMainColor,
          //         activeTrackColor: kMainColor,
          //         value: product.inStock,
          //         onChanged: toggleInStock,
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
