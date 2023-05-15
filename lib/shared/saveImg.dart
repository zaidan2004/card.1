

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ImageStoragez {
  // دالة لحفظ الصورة باستخدام SharedPreferences
Future<bool> saveImageToPrefs(String key, Uint8List imageBytes) async {
  final prefs = await SharedPreferences.getInstance();

  // تحويل مصفوفة البايتات إلى سلسلة نصية باستخدام الترميز القياسي للنصوص Base64
  final encodedImage = base64.encode(imageBytes);

  // حفظ الصورة المشفرة في SharedPreferences باستخدام المفتاح المحدد
  return prefs.setString(key, encodedImage);
}

// دالة لاسترداد الصورة المحفوظة من SharedPreferences
Future<Uint8List?> getImageFromPrefs(String key) async {
  final prefs = await SharedPreferences.getInstance();

  // استرداد الصورة المشفرة باستخدام المفتاح المحدد
  final encodedImage = prefs.getString(key);

  if (encodedImage != null) {
    // تحويل السلسلة النصية المشفرة إلى مصفوفة بايتات باستخدام الترميز القياسي للنصوص Base64
    final decodedImage = base64.decode(encodedImage);
    return decodedImage;
  } else {
    return null;
  }
}


}




// import 'dart:convert';
// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class ImageStorage {
//   static const String _keyImage = 'image';

//   Future<void> saveImage(Uint8List imageBytes) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString(_keyImage, base64Encode(imageBytes));
//   }

//   Future<Uint8List?> loadImage() async {
//     final prefs = await SharedPreferences.getInstance();
//     final String? imageBase64 = prefs.getString(_keyImage);
//     if (imageBase64 == null) {
//       return null;
//     }
//     return base64Decode(imageBase64);
//   }
// }
