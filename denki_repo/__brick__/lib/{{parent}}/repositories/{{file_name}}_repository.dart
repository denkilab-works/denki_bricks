import 'package:{{package_name}}/misc/repository.dart';

abstract interface class {{name}}Repository {
  {{#functions}}void {{method_name}}();
  {{/functions}}
}

class {{name}}RepositoryImpl extends Repository implements {{name}}Repository {
  const {{name}}RepositoryImpl();

  {{#functions}}@override
  void {{method_name}}() {

  }

  {{/functions}}
}
