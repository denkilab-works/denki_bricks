import 'package:{{package_name}}/{{parent}}/services/{{file_name}}_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late {{name}}Service service;

  setUp(() {
    service = const {{name}}ServiceImpl();
  });

  {{#functions}}
  group('when the method {{method_name}} is called', () {

  });

  {{/functions}}
}
