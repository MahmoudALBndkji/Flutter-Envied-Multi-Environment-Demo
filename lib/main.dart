import 'package:flutter_envied_multi_environment_demo/envied_demo_screen.dart';
import 'package:flutter_envied_multi_environment_demo/init_env.dart';
import 'package:flutter/material.dart';

void main() {
  initEnv();
  runApp(
    MaterialApp(
      title: 'Envied Multi Environment Demo',
      debugShowCheckedModeBanner: false,
      home: const EnviedDemoScreen(),
    ),
  );
}
