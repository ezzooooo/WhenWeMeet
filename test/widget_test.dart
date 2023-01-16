import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:get/get.dart';
import 'package:wueonman/app/controller/home_controller.dart';
import 'package:wueonman/app/data/provider/home_api.dart';
import 'package:wueonman/app/data/repository/home_repository.dart';
import 'package:http/http.dart' as http;
import 'package:wueonman/main.dart';

void main() {
  test('''
Test the state of the reactive variable "name" across all of its lifecycles''',
      () {
    /// You can test the controller without the lifecycle,
    /// but it's not recommended unless you're not using
    ///  GetX dependency injection
    final controller = HomeController(
        repository: HomeRepository(
            apiClient: HomeApiClient(httpClient: http.Client())));
    expect(controller.meetingList.length, 0);

    Get.put(controller); // onInit was called
    //expect(controller.name.value, 'name2');

    /// Test your functions
    //controller.changeName();
    //expect(controller.name.value, 'name3');

    /// onClose was called
    Get.delete<HomeController>();

    expect(controller.meetingList.length, 0);
  });
}
