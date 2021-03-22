import 'package:hera_core/hera_core.dart';
import 'package:hera_core/src/models/user.dart';
import 'package:hera_core/src/models/user_stats.dart';
import 'package:softi_firebase/firestore.dart';

final resourceMapper = <Type, FirestoreResource>{
  //
  TUser: FirestoreResource<TUser>(
    fromJson: (map) => TUser.fromJson(map),
    endpoint: 'civi_users',
  ),

  TProduct: FirestoreResource<TProduct>(
    fromJson: (map) => TProduct.fromJson(map),
    endpoint: 'civi_products',
  ),

  TUserStats: FirestoreResource<TUserStats>(
    fromJson: (map) => TUserStats.fromJson(map),
    endpoint: 'civi_users_stats',
  ),

  // TCategory: FirestoreResource<TCategory>(
  //   fromJson: (map) => TCategory.fromJson(map),
  //   endpoint: 'civi_categories',
  // ),
};

FirestoreResource<T> resourceResolver<T>() {
  return resourceMapper[T];
}
