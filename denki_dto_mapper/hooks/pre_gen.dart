import 'dart:io';

import 'package:mason/mason.dart';
import 'package:denki_bricks_helper/denki_bricks_helper.dart';

void run(HookContext context) {
  final parser = Parser();
  Pubspec? pubspec;
  try {
    pubspec = parser.parse();
  } catch (e) {
    stderr.writeln(e);
    exit(0);
  }

  final givenDtoName = (context.vars['dto_name'] as String).toLowerCase();
  final dtoName =
      givenDtoName.endsWith('dto')
          ? givenDtoName.substring(0, givenDtoName.length - 3)
          : givenDtoName;
  final givenModelName = (context.vars['model_name'] as String).toLowerCase();
  final modelName =
      givenModelName.endsWith('dto')
          ? givenModelName.substring(0, givenModelName.length - 3)
          : givenModelName;
  final packageName = pubspec.name;

  context.vars = {
    ...context.vars,
    'parent': (context.vars['parent'] as String).snakeCase,
    'dto_name': dtoName.pascalCase,
    'model_name': modelName.pascalCase,
    'name': '${dtoName}DTOMapper'.pascalCase,
    'file_name': '${dtoName}_dto_mapper'.snakeCase,
    'dto_file_name': dtoName.snakeCase,
    'model_file_name': modelName.snakeCase,
    'package_name': packageName,
  };
}
