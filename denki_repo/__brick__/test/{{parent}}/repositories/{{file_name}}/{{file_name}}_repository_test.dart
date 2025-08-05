import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/{{parent}}/repositories/{{file_name}}_repository.dart';

void main() {
  late {{name}}Repository repository;

  setUp(() {
    repository = const {{name}}RepositoryImpl();
  });

  {{#functions}}
  group('when the method {{method_name}} is called', () {

  });

  {{/functions}}
}
