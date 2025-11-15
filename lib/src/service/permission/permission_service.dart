/// See image_picker : https://pub.dev/packages/image_picker#setup
mixin PermissionServiceMixin {
  Future<bool> requireCamera();
  Future<bool> requirePhotos();
}
