import '../config/environment_factory.dart';

String makeApiUrl(String path, {String url = ''}) {
  if (url.isNotEmpty) {
    return url;
  }

  String domain = EnvironmentFactory().config.apiHostRest;

  if (path.isEmpty) {
    return '$domain';
  }

  return '$domain/$path';
}
