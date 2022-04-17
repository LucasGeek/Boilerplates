import '../../../data/data.dart';
import '../../../infra/infra.dart';

class EnvironmentFactory {
  static final EnvironmentFactory _instance = EnvironmentFactory._internal();

  factory EnvironmentFactory() => _instance;

  EnvironmentFactory._internal();

  // ignore: constant_identifier_names
  static const String DEVELOPMENT = 'DEVELOPMENT';
  // ignore: constant_identifier_names
  static const String TESTING = 'TESTING';
  // ignore: constant_identifier_names
  static const String STAGING = 'STAGING';
  // ignore: constant_identifier_names
  static const String LOCAL = 'LOCAL';
  // ignore: constant_identifier_names
  static const String PROD = 'PRODUCTION';

  late BaseConfig config;

  initConfig(String environment) {
    config = _getConfig(environment);
  }

  BaseConfig _getConfig(String environment) {
    switch (environment) {
      case EnvironmentFactory.PROD:
        return ProductionConfig();
      case EnvironmentFactory.STAGING:
        return StagingConfig();
      case EnvironmentFactory.TESTING:
        return TestingConfig();
      case EnvironmentFactory.DEVELOPMENT:
        return DevelopmentConfig();
      case EnvironmentFactory.LOCAL:
      default:
        return LocalConfig();
    }
  }
}

void enviroment() {
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: EnvironmentFactory.LOCAL,
  );

  EnvironmentFactory().initConfig(environment);
}
