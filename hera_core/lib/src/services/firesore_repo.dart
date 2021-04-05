import 'package:hera_core/hera_core.dart';
import 'package:softi_firebase/firestore.dart';

class FirestoreRepo {
  final FirestoreResourceBase resourceBase;

  FirestoreRepo(this.resourceBase);

  void toggleLike(bool postLiked, String userId, String postId) {
    if (postLiked) {
      firestore.api<TLike>().save(TLike(
            postId: postId,
            userId: userId,
            // like: postLiked(),
          ));
    } else {
      firestore.api<TLike>().delete(TLike(
            postId: postId,
            userId: userId,
            // like: postLiked(),
          ).getId());
    }
  }

  Future<void> addPostComment(String userId, String postId, String comment) async {
    await firestore.api<TComment>().save(TComment(
          comment: comment,
          postId: postId,
          userId: userId,
        ));
  }
}
