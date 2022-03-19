import '../../../data/http/http.dart';

class FileMedia implements HttpMedia {
  List<int>? get codeBytes => _bytes;
  List<int>? _bytes;

  String get fileName => _fileName;
  late String _fileName;

  String? get filePath => _filePath;
  String? _filePath;

  String get parameter => _parameter;
  late String _parameter;

  FileMedia(String parameter, String fileName) {
    _parameter = parameter;
    _fileName = fileName;
  }

  void setPath(String filePath) => _filePath = filePath;
  void setBytes(List<int> byte) => _bytes = byte;
}
