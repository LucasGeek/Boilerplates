import '../../../domain.dart';

abstract class LoadToken {
  Future<TokenEntity> load();
}
