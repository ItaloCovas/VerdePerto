// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImageStore on _ImageStoreBase, Store {
  final _$imageAtom = Atom(name: '_ImageStoreBase.image');

  @override
  File? get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(File? value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  final _$getImagefromcameraAsyncAction =
      AsyncAction('_ImageStoreBase.getImagefromcamera');

  @override
  Future<dynamic> getImagefromcamera() {
    return _$getImagefromcameraAsyncAction
        .run(() => super.getImagefromcamera());
  }

  final _$pickImageAsyncAction = AsyncAction('_ImageStoreBase.pickImage');

  @override
  Future<dynamic> pickImage(ImageSource source) {
    return _$pickImageAsyncAction.run(() => super.pickImage(source));
  }

  final _$saveImagePermanentlyAsyncAction =
      AsyncAction('_ImageStoreBase.saveImagePermanently');

  @override
  Future<File> saveImagePermanently(String imagePath) {
    return _$saveImagePermanentlyAsyncAction
        .run(() => super.saveImagePermanently(imagePath));
  }

  @override
  String toString() {
    return '''
image: ${image}
    ''';
  }
}
