import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
part 'image_store.g.dart';

class ImageStore = _ImageStoreBase with _$ImageStore;

abstract class _ImageStoreBase with Store {
  final picker = ImagePicker();

  @observable
  File? image;

  @action
  Future getImagefromcamera() async {
    final photo = await picker.pickImage(source: ImageSource.camera);

    image = File(photo!.path);
  }
}
