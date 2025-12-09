import 'env/env.dart';
import 'env/env.dev.dart';
import 'env/env.staging.dart';
import 'env/env.prod.dart';

late Env env;

initEnv() {
  const environment = String.fromEnvironment('ENV');
  switch (environment) {
    case 'dev':
      env = DevEnv();
      break;
    case 'staging':
      env = StagingEnv();
      break;
    case 'prod':
      env = ProdEnv();
      break;
    default:
      env = DevEnv();
  }
}
