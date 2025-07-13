import 'dart:io';

import 'package:denki_bricks_helper/denki_bricks_helper.dart';
import 'package:denki_bricks_helper/src/exceptions/file_not_found_exception.dart';
import 'package:denki_bricks_helper/src/exceptions/missing_required_fields_exception.dart';
import 'package:json_annotation/json_annotation.dart';

class Parser {
  final String file;

  Parser({this.file = 'pubspec.yaml'});

  Pubspec parse() {
    File pubspecFile = File(file);
    if (!pubspecFile.existsSync()) {
      throw FileNotFoundException(file);
    }

    String yaml = pubspecFile.readAsStringSync();

    try {
      return Pubspec.parse(yaml);
    } on DisallowedNullValueException catch (e) {
      throw MissingRequiredFieldsException(e.keysWithNullValues);
    } on MissingRequiredKeysException catch (e) {
      throw MissingRequiredFieldsException(e.missingKeys);
    }
  }
}
