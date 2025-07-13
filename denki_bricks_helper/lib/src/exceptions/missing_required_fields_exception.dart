class MissingRequiredFieldsException implements Exception {
  final List<String> fields;

  MissingRequiredFieldsException(this.fields);

  @override
  String toString() =>
      'The following fields were missing: $fields. Read the docs for further details';
}
