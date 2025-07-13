import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:{{package_name}}/{{parent}}/models/{{file_name}}/{{file_name}}.dart';

extension {{name}}Fixture on {{name}} {
  static {{name}}FixtureFactory factory() => {{name}}FixtureFactory();
}

class {{name}}FixtureFactory extends FixtureFactory<{{name}}> {
  @override
  FixtureDefinition<{{name}}> definition() => define(
    (faker, [int _ = 0]) => {{name}}(
      // TODO put real properties here
      world: faker.randomGenerator.string(10),
    ),
  );
}
