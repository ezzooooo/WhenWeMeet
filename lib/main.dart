import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wueonman/app/translations/app_translations.dart';

import 'app/routes/app_pages.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: Locale('ko', 'KR'),
    translationsKeys: AppTranslation.translations,
  ));
}
