class FileNotFoundException implements Exception {
  final String file;

  FileNotFoundException(this.file);

  @override
  String toString() => 'Error reading from $file. The file does not exist';
}
