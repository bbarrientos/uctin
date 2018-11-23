import 'package:flutter/material.dart';

// import 'package:uctin/view/log_in.dart';
import 'package:uctin/view/MainView.dart';
import 'package:uctin/view/LogIn.dart';
import 'package:uctin/route/Routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      //debugShowCheckedModeBanner: false,
      //title: 'Coda UFRO',
      onGenerateRoute: (RouteSettings settings){
        switch(settings.name){
          case '/': return new FadePageRoute(
            builder: (_) => new LogIn(),
            settings: settings,
          );
          case '/home': return new FadePageRoute(
            builder: (_) => new MainView(),
            settings: settings,
          );
        }
        assert(false);
      }
    );
  }
}
