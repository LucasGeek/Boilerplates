import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';

Future<File?> compressFile(File file) async {
  final filePath = file.absolute.path;

  final lastIndex = filePath.lastIndexOf(RegExp(r'.jp'));
  final splitted = filePath.substring(0, (lastIndex));
  final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
  File? result = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    outPath,
    quality: 15,
  );

  return result;
}
