import 'dart:io';

import 'package:http_parser/http_parser.dart';

MediaType getMediaTypeFromFile(File file) {
  String fileExtension = file.path.split('.').last.toLowerCase();
  if (fileExtension == 'pdf') {
    return MediaType.parse('application/pdf');
  } else if (fileExtension == 'jpeg') {
    return MediaType.parse('image/jpeg');
  } else if (fileExtension == 'png') {
    return MediaType.parse('image/png');
  } else if (fileExtension == 'jpg') {
    return MediaType.parse('image/jpg');
  } else {
    return MediaType.parse('null');
  }
}

String getFileNameFromFile(File file) {
  return file.path.split('/').last;
}

List<String> allowedFileExtensions = [
  'jpg',
  'jpeg',
  'jfif',
  'pjpeg',
  'pjp',
  'gif',
  'png',
  'svg',
  'bmp',
  'ogg',
  'webm',
  'mp4',
  'avi',
  'mov',
  'wmv',
  'mkv',
];
String getFileIconAsset(String? fileName) {
  if (fileName == null || fileName.isEmpty) {
    return 'assets/icon/group_file_icons/doc.png'; // Default icon
  }

  String extension = fileName.split('.').last.toLowerCase();

  switch (extension) {
    case 'pdf':
      return 'assets/icon/group_file_icons/pdf.png';
    case 'zip':
      return 'assets/icon/group_file_icons/rar-file.png';
    case 'xlsx':
    case 'xls':
      return 'assets/icon/group_file_icons/xls.png';
    case 'doc':
    case 'docx':
      return 'assets/icon/group_file_icons/doc.png';
    case 'ppt':
    case 'pptx':
      return 'assets/icons/ppt_icon.png';
    case 'jpg':
    case 'jpeg':
    case 'png':
      return 'assets/icons/image_icon.png';
    default:
      return 'assets/icon/group_file_icons/doc.png'; // Default icon for unknown extensions
  }
}


//   String formatFileSize(int bytes) {
//   if (bytes <= 0) return "0 B";
//   const suffixes = ["B", "KB", "MB", "GB", "TB"];
//   int i = (bytes.log() / 1024.log()).floor();
//   return ((bytes / (1 << (10 * i))).toStringAsFixed(2)) + ' ' + suffixes[i];
// }

