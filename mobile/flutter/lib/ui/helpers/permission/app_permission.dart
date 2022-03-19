import 'package:permission_handler/permission_handler.dart';

import '../../../../presentation/presentation.dart';
import '../../ui.dart';

class ExtensionPermission {
  Permission permission;
  String title;
  String description;
  String path;

  ExtensionPermission({
    required this.permission,
    required this.title,
    required this.description,
    required this.path,
  });
}

class AppPermission extends PermissionRule {
  List<ExtensionPermission> extensionPermission = [
    ExtensionPermission(
      permission: Permission.location,
      title: "Ativar Geolocalização",
      description: "O app irá usar sua localização",
      path: "",
    ),
    ExtensionPermission(
      permission: Permission.photos,
      title: "Acesso a Fotos",
      description: "O app irá usar sua câmera",
      path: "",
    ),
    ExtensionPermission(
      permission: Permission.camera,
      title: "Acesso a Câmera",
      description: "O app irá usar sua câmera",
      path: "",
    ),
    ExtensionPermission(
      permission: Permission.microphone,
      title: "Acesso ao Microfone",
      description: "O app irá usar sua câmera",
      path: "",
    ),
  ];

  final List<Permission> _permissions = [
    Permission.camera,
    Permission.photos,
    Permission.location,
  ];

  void activeAll() => _permissions.request();

  Future<bool> isActive() async {
    var permissions = await Future.wait(
      _permissions.map((permission) => permission.status).toList(),
    );

    bool any = permissions.any(
      (permission) =>
          permission == PermissionStatus.denied ||
          permission == PermissionStatus.permanentlyDenied,
    );

    return any;
  }

  Future<List<Permission>> listPermissionNotAccept() async {
    Map<Permission, PermissionStatus> statuses = {};

    for (int value = 0; value < _permissions.length; value++) {
      PermissionStatus status = await _permissions[value].status;
      Permission permission = _permissions[value];
      statuses[permission] = status;
    }

    return _permissions
        .where(
          (permission) =>
              statuses[permission] == PermissionStatus.denied ||
              statuses[permission] == PermissionStatus.permanentlyDenied,
        )
        .toList();
  }
}
