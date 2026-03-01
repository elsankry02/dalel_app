import 'package:dalel_app/core/router/go_router.dart';
import 'package:dalel_app/core/utils/constants/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: .light, fontFamily: AppStrings.poppins),
    );
  }
}
