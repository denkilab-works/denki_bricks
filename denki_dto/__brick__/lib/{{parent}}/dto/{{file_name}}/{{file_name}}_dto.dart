import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pine/pine.dart';

part '{{file_name}}_dto.freezed.dart';
part '{{file_name}}_dto.g.dart';

@freezed
abstract class {{name}}DTO extends DTO with _${{name}}DTO {
  const factory {{name}}DTO({
    // TODO put real properties here
    @Default('Hello') String world,
  }) = _{{name}}DTO;

  const {{name}}DTO._() : super();

  factory {{name}}DTO.fromJson(Map<String, dynamic> json) =>
      _${{name}}DTOFromJson(json);
}
