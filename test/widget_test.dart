import 'package:flutter_test/flutter_test.dart';

import 'package:get/get.dart';
import 'package:wueonman/app/controller/home_controller.dart';
import 'package:wueonman/app/data/provider/home_api.dart';
import 'package:wueonman/app/data/repository/home_repository.dart';
import 'package:http/http.dart' as http;

void main() {
  test('HomeController LifeCycle Test', () async {
    final controller = HomeController(
        repository: HomeRepository(
            apiClient: HomeApiClient(httpClient: http.Client())));
    expect(controller.meetingList.length, 0);

    Get.put(controller); // onInit was called

    controller.getAll().then((value) {
      expect(controller.meetingList.length, 100);
    }); // 리스트 100개 가져오는 API

    /// onClose was called
    Get.delete<HomeController>();

    expect(controller.meetingList.length, 0);
  });
}
