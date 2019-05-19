import 'dart:convert';
import 'package:taco_me/api/api.dart';
import 'package:http/http.dart' as http;

abstract class FancyTacoApi {
  Future<Taco> getRandomTaco();
  Future<List<Chef>> getChefs();
}

class FancyTaco implements FancyTacoApi {
  final http.Client httpClient;

  FancyTaco(this.httpClient);

  @override
  Future<Taco> getRandomTaco() async {
    try {
      final response =
          await httpClient.get('http://taco-randomizer.herokuapp.com/random/');
      if (response.statusCode == 200) {
        final rawJson = json.decode(response.body);
        final taco = Taco.fromJson(rawJson);
        return taco;
      } else {
        throw Exception(
            'Network called failed with code ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Could not fetch taco: $error');
    }
  }

  @override
  Future<List<Chef>> getChefs() async {
    try {
      final response = await httpClient
          .get('http://taco-randomizer.herokuapp.com/contributions/');
      if (response.statusCode == 200) {
        final rawJsonList = json.decode(response.body) as List;
        final chefs = rawJsonList.map((j) => Chef.fromJson(j)).toList();
        return chefs;
      } else {
        throw Exception(
            'Network called failed with code ${response.statusCode}');
      }
    } catch (error) {
      throw Exception('Could not fetch contributions: $error');
    }
  }
}
