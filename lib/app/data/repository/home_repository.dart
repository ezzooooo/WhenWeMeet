import 'package:flutter/material.dart';

import '../provider/home_api.dart';

class HomeRepository {
  final HomeApiClient apiClient;

  HomeRepository({required this.apiClient});

  getAll() async {
    return await apiClient.getAll();
  }
}
