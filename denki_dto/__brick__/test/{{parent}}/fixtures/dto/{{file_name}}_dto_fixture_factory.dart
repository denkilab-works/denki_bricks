import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/{{parent}}/dto/{{file_name}}/{{file_name}}_dto.dart';

extension {{name}}DTOFixture on {{name}}DTO {
  static {{name}}DTOFixtureFactory factory() => {{name}}DTOFixtureFactory();
}

class {{name}}DTOFixtureFactory extends JsonFixtureFactory<{{name}}DTO> {
  @override
  FixtureDefinition<{{name}}DTO> definition() => define(
    (faker, [int _ = 0]) => {{name}}DTO(
      // TODO put real properties here
      world: faker.randomGenerator.string(10),
    ),
  );

  @override
  JsonFixtureDefinition<{{name}}DTO> jsonDefinition() => defineJson(
    (object, [int _ = 0]) => {
      // TODO put real properties here
      'world': object.world,
    },
  );
}
