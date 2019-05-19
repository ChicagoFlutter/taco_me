import 'package:flutter/material.dart';

import 'package:taco_me/api/api.dart';
import 'package:taco_me/home/home.dart';

class TacoMeApp extends StatelessWidget {
  final FancyTacoApi fancyTacoApi;

  TacoMeApp(this.fancyTacoApi);

  @override
  Widget build(BuildContext context) {
    return FancyTacoApiProvider(
      fancyTacoApi: fancyTacoApi,
      child: MaterialApp(
        title: 'Taco Me!',
        home: HomePage(),
      ),
    );
  }
}
