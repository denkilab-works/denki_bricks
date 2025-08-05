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
      givenName.endsWith('repository')
          ? givenName.substring(0, givenName.length - 10)
          : givenName;
  final packageName = pubspec.name;

  final methods = (context.vars['methods'] as String)
      .split(',')
      .map((method) => method.trim())
      .where((method) => method.isNotEmpty);
  final rearrangedMethods = methods
      .map((method) => {'method_name': method.camelCase})
      .toList(growable: false);

  context.vars = {
    ...context.vars,
    'parent': (context.vars['parent'] as String).snakeCase,
    'name': name.pascalCase,
    'file_name': name.snakeCase,
    'functions': rearrangedMethods,
    'package_name': packageName,
  };
}
