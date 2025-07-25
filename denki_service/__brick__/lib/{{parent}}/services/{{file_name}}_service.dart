{{#context}}import 'package:flutter/material.dart';
import 'package:provider/provider.dart';{{/context}}

abstract interface class {{name}}Service {
  {{#functions}}void {{method_name}}();
  {{/functions}}
}

class {{name}}ServiceImpl implements {{name}}Service {
  const {{name}}ServiceImpl();

  {{#functions}}@override
  void {{method_name}}() {

  }

  {{/functions}}
}
