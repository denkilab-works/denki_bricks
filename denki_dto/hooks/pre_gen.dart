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

  final givenName = (context.vars['name'] as String).toLowerCase();
  final name =
      givenName.endsWith('dto')
          ? givenName.substring(0, givenName.length - 3)
          : givenName;
  final packageName = pubspec.name;

  context.vars = {
    ...context.vars,
    'parent': context.vars['parent'].snakeCase,
    'name': name.pascalCase,
    'file_name': name.snakeCase,
    'package_name': packageName,
  };
}
