import 'package:hera_core/hera_core.dart';
import 'package:softi_common/resource.dart';

class FeedPageController extends CollectionController<TPost> {
  FeedPageController()
      : super(
          firestore.collection<TPost>(),
          filter: Filter() //
              // .$filter$eq('createdBy', createdBy)
              .$orderBy('updatedAt', desc: true),
          options: CollectionOptions(pageSize: 2),
        );
}
