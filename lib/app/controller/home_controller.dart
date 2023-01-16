import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wueonman/app/data/model/meeting.dart';

import '../data/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController({required this.repository});

  final RxList<Meeting> _meetingList = <Meeting>[].obs;
  get meetingList => _meetingList;
  set meetingList(list) => _meetingList.value = list;

  void getAll() async {
    meetingList = await repository.getAll();
  }
}
