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

  final name = context.vars['name'] as String;
  final methods = (context.vars['methods'] as String)
      .split(',')
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty);
  final states = (context.vars['states'] as String)
      .split(',')
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty);
  final packageName = pubspec.name;

  final rearrangeMethods = methods
      .map((event) => {'method': '${event.camelCase}'})
      .toList(growable: false);

  final rearrangedStates = states
      .map(
        (state) => {
          'factory_name': '${name.pascalCase}State.${state.camelCase}',
          'class_name': '${state.pascalCase}${name.pascalCase}State',
        },
      )
      .toList(growable: false);

  final defaultState = rearrangedStates.first;

  context.vars = {
    ...context.vars,
    'file_name': name.snakeCase,
    'cubit_name': '${name.pascalCase}Cubit',
    'state': '${name.pascalCase}State',
    'default_state': defaultState['factory_name'],
    'methods': rearrangeMethods,
    'states': rearrangedStates,
    'package_name': packageName,
  };
}
