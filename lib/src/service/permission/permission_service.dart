/// TODO : documentation
/// SETUP :
///
/// iOS :
///
/// ```plist
/// <!-- Image Picker Permissions -->
/// <key>NSCameraUsageDescription</key>
/// <string>Allow access to take photos.</string>
/// <key>NSPhotoLibraryUsageDescription</key>
/// <string>Allow access to select photos.</string>
/// <key>NSMicrophoneUsageDescription</key>
/// <string>Allow access to record videos.</string>
/// ```
mixin PermissionServiceMixin {
  Future<bool> requireCamera();
  Future<bool> requirePhotos();
}
