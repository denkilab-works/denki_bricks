import 'package:{{package_name}}/{{parent}}/dto/{{dto_file_name}}/{{dto_file_name}}_dto.dart';
import 'package:{{package_name}}/{{parent}}/models/{{model_file_name}}/{{model_file_name}}.dart';
import 'package:pine/pine.dart';

class {{name}} extends DTOMapper<{{dto_name}}DTO, {{model_name}}> {
  const {{name}}();

  @override
  {{model_name}} fromDTO({{dto_name}}DTO dto) => {{model_name}}();

  @override
  {{dto_name}}DTO toDTO({{model_name}} model) => {{dto_name}}DTO();
}
