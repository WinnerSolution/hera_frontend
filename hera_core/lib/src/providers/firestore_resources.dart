import 'package:hera_core/hera_core.dart';
import 'package:softi_firebase/firestore.dart';

final resourceMapper = <Type, FirestoreResource>{
  //
  TUser: FirestoreResource<TUser>(
    fromJson: (map) => TUser.fromJson(map),
    endpoint: 'civi_users',
  ),

  TPost: FirestoreResource<TPost>(
    fromJson: (map) => TPost.fromJson(map),
    endpoint: 'civi_posts',
  ),

  TPostStats: FirestoreResource<TPostStats>(
    fromJson: (map) => TPostStats.fromJson(map),
    endpoint: 'civi_post_stats',
  ),

  TUserStats: FirestoreResource<TUserStats>(
    fromJson: (map) => TUserStats.fromJson(map),
    endpoint: 'civi_users_stats',
  ),

  TComment: FirestoreResource<TComment>(
    fromJson: (map) => TComment.fromJson(map),
    endpoint: 'civi_comments',
  ),

  TLike: FirestoreResource<TLike>(
    fromJson: (map) => TLike.fromJson(map),
    endpoint: 'civi_likes',
  ),

  // TCategory: FirestoreResource<TCategory>(
  //   fromJson: (map) => TCategory.fromJson(map),
  //   endpoint: 'civi_categories',
  // ),
};

FirestoreResource<T> resourceResolver<T>() {
  return resourceMapper[T];
}
