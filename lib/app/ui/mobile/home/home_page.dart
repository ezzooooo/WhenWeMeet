import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../widgets/loading_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(initState: (state) {
        Get.find<HomeController>().getAll();
      }, builder: (_) {
        return _.meetingList.isEmpty
            ? const LoadingWidget()
            : ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${_.meetingList[index].id}'),
                    subtitle: Text(_.meetingList[index].title),
                    onTap: () => debugPrint(_.meetingList[index].toString()),
                  );
                },
                itemCount: _.meetingList.length,
              );
      }),
    );
  }
}
