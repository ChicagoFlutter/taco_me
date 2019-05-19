import 'dart:math';
import 'package:flutter/widgets.dart';

class TacoImage extends StatelessWidget {
  final _numberOfImagesInTacosFolder = 6;
  @override
  Widget build(BuildContext context) {
    print('Building taco');
    final index = _getRandomNumberBetween(
      min: 1,
      max: _numberOfImagesInTacosFolder,
    );
    final imagePath = 'assets/tacos/taco$index.png';
    return Container(
      height: 200,
      width: 200,
      padding: EdgeInsets.all(16.0),
      child: Image(image: AssetImage(imagePath)),
    );
  }

  int _getRandomNumberBetween({
    @required int min,
    @required int max,
  }) {
    final random = Random();
    int next(int min, int max) => min + random.nextInt(max - min);
    return next(min, max);
  }
}
