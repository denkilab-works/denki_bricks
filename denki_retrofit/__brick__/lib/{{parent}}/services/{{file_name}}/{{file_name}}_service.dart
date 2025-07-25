import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{package_name}}/misc/constants.dart';

part '{{file_name}}_service.g.dart';

@RestApi(baseUrl: K.apiBaseUrl)
abstract class {{name}}Service {
  factory {{name}}Service(Dio dio, {String baseUrl}) = _{{name}}Service;

  //TODO: Add your methods and remove example
  @GET('/example')
  Future<String> getGreetings();
}
