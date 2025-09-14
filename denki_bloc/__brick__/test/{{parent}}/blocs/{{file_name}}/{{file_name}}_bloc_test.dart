import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{package_name}}/{{parent}}/blocs/{{file_name}}/{{file_name}}_bloc.dart';

void main() {
  late {{bloc_name}} bloc;

  setUp(() {
    bloc = {{bloc_name}}();
  });

  {{#events}}
  group('when the event {{class_name}} is added to the BLoC', () {
    blocTest<{{bloc_name}}, {{state}}>(
      '[{{bloc_name}}] emits {{default_state}}',
      setUp: () {
        //TODO: setup the environment
      },
      build: () => bloc,
      act: (bloc) {
        bloc.{{method}}();
      },
      expect: () => <{{state}}>[
        //TODO: define the emitted {{state}} states
      ],
      verify: (_) {
        //TODO: verify that methods are invoked properly
      },
    );
  });
  {{/events}}
}
