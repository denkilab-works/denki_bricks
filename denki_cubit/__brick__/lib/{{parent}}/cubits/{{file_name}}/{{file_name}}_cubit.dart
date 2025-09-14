import 'dart:async';

{{#context}}import 'package:flutter/material.dart';{{/context}}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}_state.dart';
part '{{file_name}}_state_utils.dart';

part '{{file_name}}_cubit.freezed.dart';

class {{cubit_name}} extends Cubit<{{state}}> {
  {{cubit_name}}() : super(const {{default_state}}());
  {{#methods}}
  FutureOr<void> {{method}}() {
    //TODO: map {{method}} to {{state}} states
  }
  {{/methods}}
}

{{#context}}extension {{cubit_name}}Extension on BuildContext {
  {{cubit_name}} get {{cubit_name.camelCase()}} => read<{{cubit_name}}>();

  {{cubit_name}} get watch{{cubit_name}} => watch<{{cubit_name}}>();
}{{/context}}
