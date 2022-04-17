import 'dart:async';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../ui.dart';

// ignore: must_be_immutable
class AppImage extends StatelessWidget {
  AppImage({
    required this.widget,
    required this.imageStream,
    required this.validateImage,
  });

  ImagePicker _picker = ImagePicker();

  Widget widget;
  Function(String) validateImage;
  StreamSink<String> imageStream;

  @override
  Widget build(BuildContext context) {
    void sendImage(XFile? image) async {
      if (image != null) {
        File? imageCompressed = await compressFile(File(image.path));

        if (imageCompressed != null) {
          imageStream.add(imageCompressed.path);
          validateImage(imageCompressed.path);
        }
      }
    }

    void _modalBottomSheetMenu() => showModalBottomSheet(
          context: context,
          backgroundColor: Colors.white,
          builder: (builder) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.perm_media),
                  title: new Text('signup_gallery'.tr),
                  onTap: () async {
                    Navigator.pop(context);
                    sendImage(
                      await _picker.pickImage(
                        source: ImageSource.gallery,
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.camera_alt),
                  title: new Text('signup_camera'.tr),
                  onTap: () async {
                    Navigator.pop(context);
                    sendImage(
                      await _picker.pickImage(
                        source: ImageSource.camera,
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.image_not_supported_rounded),
                  title: new Text('signup_remove'.tr),
                  onTap: () async {
                    Navigator.pop(context);
                    imageStream.add('');
                    validateImage('');
                  },
                ),
              ],
            );
          },
        );

    return GestureDetector(
      onTap: _modalBottomSheetMenu,
      child: widget,
    );
  }
}
