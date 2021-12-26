// import 'dart:io';
//
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class Helper {
//   static Future<File?> getImage(ImageSource source) async {
//     await Permission.photos.request();
//     await Permission.mediaLibrary.request();
//     final _picker = ImagePicker();
//     final _filePicked =
//         await _picker.pickImage(source: source, imageQuality: 20);
//
//     if (_filePicked != null) {
//       return File(_filePicked.path);
//     } else {
//       return null;
//     }
//   }
// }
