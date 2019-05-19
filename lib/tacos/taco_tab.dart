import 'package:flutter/material.dart';

import 'package:taco_me/api/api.dart';
import 'package:taco_me/tacos/tacos.dart';

class TacoTab extends StatefulWidget {
  const TacoTab({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TacoTabState();
}

class _TacoTabState extends State<TacoTab> {
  @override
  Widget build(BuildContext context) {
    final fancyTacoApi = FancyTacoApiProvider.of(context).fancyTacoApi;
    return Center(
      child: FutureBuilder(
        future: fancyTacoApi.getRandomTaco(),
        builder: (BuildContext context, AsyncSnapshot<Taco> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) return TacoRecipe(snapshot.data);
            if (snapshot.hasError) return Text('Failed');
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
