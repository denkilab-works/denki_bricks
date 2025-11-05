import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pine/pine.dart';

part '../../../../../../../denki_request/__brick__/lib/{{parent}}/services/responses/{{file_name}}/{{file_name}}_response.freezed.dart';
part '../../../../../../../denki_request/__brick__/lib/{{parent}}/services/responses/{{file_name}}/{{file_name}}_response.g.dart';

@freezed
abstract class {{name}}Response extends DTO with _${{name}}Response {
  const factory {{name}}Response({
    // TODO put real properties here
    @Default('Hello') String world,
  }) = _{{name}}Response;

  const {{name}}Response._() : super();

  factory {{name}}Response.fromJson(Map<String, dynamic> json) =>
      _${{name}}ResponseFromJson(json);
}
