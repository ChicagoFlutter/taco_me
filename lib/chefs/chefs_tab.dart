import 'package:flutter/material.dart';

import 'package:taco_me/api/api.dart';

class ChefsTab extends StatelessWidget {
  const ChefsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fancyTacoApi = FancyTacoApiProvider.of(context).fancyTacoApi;
    return FutureBuilder(
      future: fancyTacoApi.getChefs(),
      builder: (BuildContext context, AsyncSnapshot<List<Chef>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) return _Chefs(snapshot.data);
          if (snapshot.hasError) return Text('Failed');
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class _Chefs extends StatelessWidget {
  final List<Chef> chefs;

  _Chefs(this.chefs);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chefs.length,
      itemBuilder: (BuildContext context, int index) {
        final chef = chefs[index];
        return ListTile(
          leading: chef.avatarUrl != null
              ? Image.network(chef.avatarUrl)
              : Icon(Icons.person),
          title: Text(chef.fullName),
          subtitle: Text(chef.username),
        );
      },
    );
  }
}
