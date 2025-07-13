import 'package:checked_yaml/checked_yaml.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pubspec.freezed.dart';
part 'pubspec.g.dart';

@freezed
class Pubspec with _$Pubspec {
  const Pubspec._();

  const factory Pubspec({required String name}) = _Pubspec;

  factory Pubspec.fromJson(Map<String, dynamic> json) =>
      _$PubspecFromJson(json);

  factory Pubspec.parse(String yaml) =>
      checkedYamlDecode(yaml, (o) => Pubspec.fromJson((Map.from(o ?? {}))));
}
