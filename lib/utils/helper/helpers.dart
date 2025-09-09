import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class AHelper {
  static String formattedPrice(int price) {
    // using #,### format which tells to add the , after every 3 digits
    return NumberFormat("#,###", "en_US").format(price);
  }

  static Future<File?> imagePicker() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    print("Image = ${image.path}");
    return File(image.path);
  }

  static ImageProvider buildImage(String imagePath) {
    if (imagePath.startsWith("assets/")) {
      return AssetImage(imagePath);
    } else {
      return FileImage(File(imagePath));
    }
  }
}
