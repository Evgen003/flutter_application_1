import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app.dart';
import 'package:flutter_application_1/app/theme/theme_data.dart';

class MyApk extends StatelessWidget {
  const MyApk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MyApk',
      theme: AppTheme.lightTheme,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
