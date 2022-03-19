abstract class HttpMedia {
  final String parameter;
  final String fileName;
  String? get filePath;
  List<int>? get codeBytes;

  HttpMedia({required this.parameter, required this.fileName});
}