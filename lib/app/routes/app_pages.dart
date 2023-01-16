import 'package:get/get.dart';

import '../bindings/home_binding.dart';
import '../ui/mobile/home/home_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding())
  ];
}
