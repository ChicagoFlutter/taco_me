import 'package:flutter/widgets.dart';

import 'api.dart';

class FancyTacoApiProvider extends InheritedWidget {
  final FancyTacoApi fancyTacoApi;

  const FancyTacoApiProvider({
    Key key,
    @required this.fancyTacoApi,
    @required Widget child,
  })  : assert(fancyTacoApi != null),
        assert(child != null),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(FancyTacoApiProvider _) => false;

  static FancyTacoApiProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(FancyTacoApiProvider);
}
