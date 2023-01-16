import 'package:get/get.dart';
import 'package:wueonman/app/data/model/meeting.dart';

import '../data/repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController({required this.repository});

  final RxList<Meeting> _meetingList = <Meeting>[].obs;
  RxList<Meeting> get meetingList => _meetingList;
  set meetingList(List<Meeting> list) => _meetingList.value = list;

  Future<void> getAll() async {
    meetingList = await repository.getAll();
  }
}
