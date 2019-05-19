import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:taco_me/api/api.dart';
import 'package:taco_me/taco_me_app.dart';

void main() {
  final httpClient = http.Client();
  final fancyTacoApi = FancyTaco(httpClient);
  runApp(TacoMeApp(fancyTacoApi));
}
