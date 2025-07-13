import 'package:freezed_annotation/freezed_annotation.dart';

part '{{file_name}}.freezed.dart';

@freezed
abstract class {{name}} with _${{name}} {
  const factory {{name}}({
    // TODO put real properties here
    @Default('Hello') String world,
  }) = _{{name}};

  const {{name}}._();
}
