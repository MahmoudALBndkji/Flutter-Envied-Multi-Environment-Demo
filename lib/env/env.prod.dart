import 'package:flutter_envied_multi_environment_demo/env/env.dart';
import 'package:envied/envied.dart';

part 'env.prod.g.dart';

@Envied(
  path: 'env/.env.prod',
  obfuscate: true,
)
class ProdEnv implements Env {
  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _ProdEnv.baseUrl;

  @override
  @EnviedField(varName: 'SENTRY_API_KEY')
  final String sentryApiKey = _ProdEnv.sentryApiKey;

  @override
  @EnviedField(varName: 'PUBLIC_KEY_PAYMENT')
  final String publicPaymentKey = _ProdEnv.publicPaymentKey;

  @override
  @EnviedField(varName: 'PRIVATE_KEY_PAYMENT')
  final String privatePaymentKey = _ProdEnv.privatePaymentKey;
}
