import 'package:get/get.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';

class FeedPageController extends BaseController {
  final ResourceCollection<TPost> postCollection;

  FeedPageController() : postCollection = firestore.collection<TPost>();

  @override
  void onReady() {
    var filter = Filter() //
        // .$filter$eq('createdBy', createdBy)
        .$orderBy('updatedAt', desc: true);

    postCollection.requestData(filter.build(), options: CollectionOptions());
    super.onReady();
  }

  RxList<TPost> get recordList => postCollection.data;

  void handleListItemCreation(int index, int length) {
    if (postCollection.data.length == (index + 1) && postCollection.hasMoreData()) {
      postCollection.requestMoreData();
    }
  }
}
