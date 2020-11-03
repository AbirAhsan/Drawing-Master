import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker extends ChangeNotifier {
  File image;
  final picker = ImagePicker();

  Future getImage({ImageSource source}) async {
    File pickedFile =
        await picker.getImage(source: ImageSource.gallery) as File;

    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
    notifyListeners();
  }
}
