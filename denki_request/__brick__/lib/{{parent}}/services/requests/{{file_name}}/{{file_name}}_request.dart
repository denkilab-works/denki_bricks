import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pine/pine.dart';

part '{{file_name}}_request.freezed.dart';
part '{{file_name}}_request.g.dart';

@freezed
abstract class {{name}}Request extends DTO with _${{name}}Request {
  const factory {{name}}Request({
    // TODO put real properties here
    @Default('Hello') String world,
  }) = _{{name}}Request;

  const {{name}}Request._() : super();

  factory {{name}}Request.fromJson(Map<String, dynamic> json) =>
      _${{name}}RequestFromJson(json);
}
