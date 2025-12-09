import 'package:flutter_envied_multi_environment_demo/env/env.dart';
import 'package:envied/envied.dart';

part 'env.dev.g.dart';

@Envied(
  path: 'env/.env.dev',
  obfuscate: true,
)
class DevEnv implements Env {
  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _DevEnv.baseUrl;

  @override
  @EnviedField(varName: 'SENTRY_API_KEY')
  final String sentryApiKey = _DevEnv.sentryApiKey;

  @override
  @EnviedField(varName: 'PUBLIC_KEY_PAYMENT')
  final String publicPaymentKey = _DevEnv.publicPaymentKey;

  @override
  @EnviedField(varName: 'PRIVATE_KEY_PAYMENT')
  final String privatePaymentKey = _DevEnv.privatePaymentKey;
}
