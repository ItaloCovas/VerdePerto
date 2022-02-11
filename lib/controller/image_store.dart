import 'dart:io' show File;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
part 'image_store.g.dart';

class ImageStore = _ImageStoreBase with _$ImageStore;

class _picker {
  static pickImage({required ImageSource source}) {}
}

abstract class _ImageStoreBase with Store {
  final picker = ImagePicker();

  @observable
  File? image;

  @action
  Future getImagefromcamera() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    final pickedFile = await picker.pickImage(
        source: ImageSource.camera, maxWidth: 800, imageQuality: 50);
    image = image;
  }

  @action
  Future pickImage(ImageSource source, BuildContext context) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      //final imageTemporary = File(image.path);
      final imagePermanent = await saveImagePermanently(image.path);
      this.image = imagePermanent;
      Navigator.of(context).pop();
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @action
  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }
}
