abstract class PermissionRule {
  Future<bool> isActive();
  Future<List> listPermissionNotAccept();
  void activeAll();
}