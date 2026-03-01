import 'package:dalel_app/app/app.dart';
import 'package:dalel_app/core/utils/constants/app_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      path: AppStrings.kTranslations,
      supportedLocales: [Locale('ar'), Locale('en')],
      child: DalelApp(),
    ),
  );
}
