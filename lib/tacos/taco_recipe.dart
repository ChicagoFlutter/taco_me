import 'package:flutter/material.dart';
import 'package:taco_me/api/api.dart';
import 'package:taco_me/tacos/tacos.dart';

class TacoRecipe extends StatelessWidget {
  final Taco taco;

  TacoRecipe(this.taco);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TacoImage(),
          RichText(
            text: TextSpan(
              style: Theme.of(context).textTheme.headline,
              children: <TextSpan>[
                TextSpan(text: taco.baseLayer.name),
                _JointTextSpan(' with '),
                TextSpan(text: '${taco.mix.name},'),
                _JointTextSpan(' garnished with '),
                TextSpan(text: taco.condiment.name),
                _JointTextSpan(' topped of with '),
                TextSpan(text: taco.seasoning.name),
                _JointTextSpan(' and wrapped in delicious '),
                TextSpan(text: taco.shell.name),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _JointTextSpan extends TextSpan {
  final String text;

  _JointTextSpan(this.text)
      : super(
          text: text,
          style: TextStyle(fontWeight: FontWeight.bold),
        );
}
