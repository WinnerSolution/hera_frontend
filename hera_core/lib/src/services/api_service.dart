import 'package:dio/dio.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:hera_core/src/models/user.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public-api/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/users')
  Future<TUser> getUsers();

  @POST('/users')
  Future<TUser> createUsers(@Body() TUser user);
}
