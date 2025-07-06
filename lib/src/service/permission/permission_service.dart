// TODO : implement & use

abstract class PermissionService {
  const PermissionService();

  Future<bool> requireCamera();
  Future<bool> requirePhotos();
}
