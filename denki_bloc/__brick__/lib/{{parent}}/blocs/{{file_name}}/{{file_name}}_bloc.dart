import 'dart:async';

{{#context}}import 'package:flutter/material.dart';{{/context}}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}_event.dart';
part '{{file_name}}_state.dart';
part '{{file_name}}_state_utils.dart';

part '{{file_name}}_bloc.freezed.dart';

class {{bloc_name}} extends Bloc<{{event}}, {{state}}> {
  {{bloc_name}}() : super(const {{default_state}}()) {
    {{#events}}on<{{class_name}}>({{action}});
    {{/events}}
  }
  {{#events}}
  void {{method}}() => add(const {{factory_name}}());
  {{/events}}
  {{#events}}
  FutureOr<void> {{action}}(
    {{class_name}} event,
    Emitter<{{state}}> emit,
  ) {
    //TODO: map {{class_name}} to {{state}} states
  }
  {{/events}}
}

{{#context}}extension {{bloc_name}}Extension on BuildContext {
  {{bloc_name}} get {{bloc_name.camelCase()}} => read<{{bloc_name}}>();

  {{bloc_name}} get watch{{bloc_name}} => watch<{{bloc_name}}>();
}{{/context}}
