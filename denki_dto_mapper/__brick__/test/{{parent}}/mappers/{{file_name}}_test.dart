import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/{{parent}}/dto/{{dto_file_name}}/{{dto_file_name}}_dto.dart';
import 'package:{{package_name}}/{{parent}}/mappers/{{file_name}}.dart';
import 'package:{{package_name}}/{{parent}}/models/{{model_file_name}}/{{model_file_name}}.dart';

import '../fixtures/dto/{{dto_file_name}}_dto_fixture_factory.dart';

void main() {
  late {{name}} mapper;
  late {{dto_name}}DTO dto;
  late {{model_name}} model;

  setUp(() {
    dto = {{dto_name}}DTOFixture.factory().makeSingle();

    model = {{model_name}}();
    mapper = const {{name}}();
  });

  test('mapping {{model_name}} object from {{dto_name}}DTO', () {
    expect(mapper.fromDTO(dto), equals(model));
  });

  test('mapping {{model_name}} to {{dto_name}}DTO', () {
    expect(mapper.toDTO(model), equals(dto));
  });
}
