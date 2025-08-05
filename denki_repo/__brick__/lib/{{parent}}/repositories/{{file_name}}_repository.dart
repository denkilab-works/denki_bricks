abstract interface class {{name}}Repository {
  {{#functions}}void {{method_name}}();
  {{/functions}}
}

class {{name}}RepositoryImpl implements {{name}}Repository {
  const {{name}}RepositoryImpl();

  {{#functions}}@override
  void {{method_name}}() {

  }

  {{/functions}}
}
