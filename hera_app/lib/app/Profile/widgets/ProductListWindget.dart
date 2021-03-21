import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Profile/widgets/ProductListItemWidget.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/widgets/ItemListWidget.dart';
import 'package:hera_core/hera_core.dart';

import 'package:softi_common/services.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';
import 'package:softi_mediamanager/MediaManager/MediaManager.dart';
import 'package:softi_mediamanager/index.dart';

class ProductListController extends BaseController {
  final String categoryId;
  final ResourceCollection<TProduct> collection;

  ProductListController(this.categoryId) : collection = firestore.collection<TProduct>();

  RxList<TProduct> get recordList => collection.data;

  void handleListItemCreation(int index, int length) {
    // when the item is created we request more data when we reached the end of current page
    // print('index $index created');
    if (collection.data.length == (index + 1) && collection.hasMoreData()) {
      collection.requestMoreData();
    }
  }

  void openProductForm(TProduct record) {
    Get.to(ProductForm(product: record));
  }

  void openMediaManager(TProduct record) async {
    // var _user = app.authApi;
    var _library = await Get.to<List<NetworkMediaAsset>>(
      MediaManager(
        controller: MediaManagerController(
          gallery: record.images.map((e) => e.toNetworAsset()).toList(),
          maxImageNumber: 3,
          fileTitleBuilder: (rand) => record.id + '/' + rand,
          placehoderImageUrl: '',
          cloudStorage: cloudStorage,
          loading: loading,
          maxImageWidth: 640,
          mediaPicker: mediaPicker,
        ),
      ),
      preventDuplicates: false,
    );

    var _result = _library?.map((e) => RemoteImage.fromNetworAsset(e))?.toList();

    print(_result.toString());

    if (record.images != _result && _result != null) {
      await firestore.save<TProduct>(record.copyWith(images: _result));
    }
  }

  // void toggleInStock(TProduct record) {
  //   firestore.save<TProduct>(record.copyWith(inStock: !record.inStock));
  // }

  @override
  void onReady() {
    var filter = categoryId == null ? Filter() : Filter().$filter$eq('categoryId', categoryId);

    collection.requestData(filter.build(), options: CollectionOptions());
    super.onReady();
  }

  @override
  void onClose() {
    collection..dispose();
    super.onClose();
  }
}

class ProductList extends StatelessWidget {
  final String categoryId;
  final ProductListController con;

  ProductList(
    this.categoryId, {
    Key key,
  })  : con = Get.put(ProductListController(categoryId), tag: categoryId),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        var _list = con.recordList;

        return ItemListWidget(
          itemCreated: con.handleListItemCreation,
          itemCount: _list().length,
          itemBuilder: (index) {
            var record = _list()[index];
            return ProductListItemWidget(
              product: record,
              onImageTap: () => con.openMediaManager(record),
              onTap: () => con.openProductForm(record),
              toggleInStock: (newValue) => null,
            );
          },
        );
      },
    );
  }
}
