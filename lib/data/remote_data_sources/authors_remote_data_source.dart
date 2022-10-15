import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:user_articles/domain/models/author_model.dart';

part 'authors_remote_data_source.g.dart';

@RestApi(
    baseUrl:
        "https://my-json-server.typicode.com/adamsmaka/json-demo/json-demo")
abstract class AuthorsRemoteRetroFitDataSource {
  factory AuthorsRemoteRetroFitDataSource(Dio dio, {String baseUrl}) =
      _AuthorsRemoteRetroFitDataSource;

  @GET("/users")
  Future<List<AuthorModel>> getAuthors();
}

//class AuthorsRemoteDataSource {
  //Future<List<Map<String, dynamic>>?> getAuthors() async {
   // final response = await Dio().get<List<dynamic>>(
        //'https://my-json-server.typicode.com/adamsmaka/json-demo/users');
    //final listDynamic = response.data;
    //if (listDynamic == null) {
      //return null;
   // }
    //return listDynamic.map((e) => e as Map<String, dynamic>).toList();
 // }
//}
