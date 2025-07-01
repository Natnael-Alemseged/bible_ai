import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';

enum UploadType { image, track }

Future<String?> pickFile(UploadType type) async {
  // Determine allowed extensions based on UploadType
  List<String> allowedExtensions = [];

  if (type == UploadType.image) {
    allowedExtensions = ['jpg', 'jpeg', 'png'];
  } else if (type == UploadType.track) {
    allowedExtensions = [
      // 'jpg',
      'mp3',
      'Mp3',
      'wav',
      'aac',
      'ogg',
      'wma',
      'flac',
      'm4a',
      'opus',
      'pcm',
      'mid',
    ];

    debugPrint(allowedExtensions.toString());
  }

  // Open file picker
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: allowedExtensions,
  );

  // Return selected file path or null if none selected
  return result != null && result.files.isNotEmpty
      ? result.files.first.path
      : null;
}

// Extracts file name from the selected file path
String fileName(String selectedFilePath) {
  return path.basename(selectedFilePath);
}
