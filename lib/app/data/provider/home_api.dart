import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wueonman/app/data/model/meeting.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class HomeApiClient {
  final http.Client httpClient;
  HomeApiClient({required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        List<Meeting> listMyModel = <Meeting>[];
        Iterable jsonResponse = json.decode(response.body);
        for (var element in jsonResponse) {
          listMyModel.add(Meeting.fromJson(element));
        }

        return listMyModel;
      } else {
        debugPrint('error');
      }
    } catch (_) {}
  }
}
