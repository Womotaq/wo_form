// TODO : implement & use

/// TODO : documentation
/// SETUP :
///
/// iOS :
///
/// <!-- Image Picker Permissions -->
/// <key>NSCameraUsageDescription</key>
/// <string>Allow access to take photos.</string>
/// <key>NSPhotoLibraryUsageDescription</key>
/// <string>Allow access to select photos.</string>
/// <key>NSMicrophoneUsageDescription</key>
/// <string>Allow access to record videos.</string>
abstract class PermissionService {
  const PermissionService();

  Future<bool> requireCamera();
  Future<bool> requirePhotos();
}
