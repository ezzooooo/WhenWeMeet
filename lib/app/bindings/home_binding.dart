import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import '../controller/home_controller.dart';
import '../data/provider/home_api.dart';
import '../data/repository/home_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
          repository: HomeRepository(
              apiClient: HomeApiClient(httpClient: http.Client())));
    });
  }
}
