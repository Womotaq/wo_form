import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/app.dart';

class PermissionService with PermissionServiceMixin {
  const PermissionService();

  Future<bool> _requirePermission(Permission permission) async {
    ///
    if (kIsWeb && permission == Permission.photos) return true;

    var status = await permission.status;

    if (status.isDenied) {
      status = await permission.request();
    }

    switch (status) {
      /// The user declined again the permission
      case PermissionStatus.denied:
        return false;

      /// The user granted full or partial permission
      case PermissionStatus.granted:
      case PermissionStatus.limited:
      case PermissionStatus.provisional:
        return true;

      /// The user strongly denied or the os denied permission
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.restricted:
        showInsufficientPermissionDialog(permission);
        return false;
    }
  }

  @override
  Future<bool> requirePhotos() => _requirePermission(Permission.photos);

  @override
  Future<bool> requireCamera() => _requirePermission(Permission.camera);
}

void showInsufficientPermissionDialog(Permission permission) =>
    showDialog<void>(
      context: App.context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Permission Required'),
          content: const Text(
            'To use this feature, permission access is required. '
            'Please enable it in your app settings.',
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
            TextButton(
              child: const Text('Open Settings'),
              onPressed: () {
                openAppSettings(); // Opens app settings for the user
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
