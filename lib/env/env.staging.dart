import 'package:flutter_envied_multi_environment_demo/env/env.dart';
import 'package:envied/envied.dart';

part 'env.staging.g.dart';

@Envied(
  path: 'env/.env.staging',
  obfuscate: true,
)
class StagingEnv implements Env {
  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _StagingEnv.baseUrl;

  @override
  @EnviedField(varName: 'SENTRY_API_KEY')
  final String sentryApiKey = _StagingEnv.sentryApiKey;

  @override
  @EnviedField(varName: 'PUBLIC_KEY_PAYMENT')
  final String publicPaymentKey = _StagingEnv.publicPaymentKey;

  @override
  @EnviedField(varName: 'PRIVATE_KEY_PAYMENT')
  final String privatePaymentKey = _StagingEnv.privatePaymentKey;
}
