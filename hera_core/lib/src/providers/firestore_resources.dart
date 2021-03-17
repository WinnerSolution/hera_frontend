import 'package:hera_core/hera_core.dart';
import 'package:hera_core/src/models/user.dart';
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

  // TRequestor: FirestoreResource<TRequestor>(
  //   fromJson: (map) => TRequestor.fromJson(map),
  //   endpoint: 'civi_stores',
  // ),

  // TCategory: FirestoreResource<TCategory>(
  //   fromJson: (map) => TCategory.fromJson(map),
  //   endpoint: 'civi_categories',
  // ),
};

FirestoreResource<T> resourceResolver<T>() {
  return resourceMapper[T];
}
