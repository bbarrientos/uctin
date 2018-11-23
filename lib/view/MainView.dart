import 'package:flutter/material.dart';
import 'CardsSectionAlignment.dart';
import 'CardsSectionDraggable.dart';

class MainView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorBrightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showAlignmentCards = false;

  Widget _buildAppBar(){
    return new AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: new IconButton(
        icon: new Icon(
          Icons.person,
          color: Colors.grey,
          size: 40.0,
        ),
        onPressed: (){

        },
      ),
      title: new FlutterLogo(
        size: 30.0,
        colors: Colors.red,

      ),
      actions: <Widget>[
        new IconButton(
          icon: new Icon(
            Icons.chat_bubble,
            color: Colors.grey,
            size: 40.0,
          ),
          onPressed: (){

          },
        )
      ],
    );
  }

  Widget _buildBottomBar(){
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new RoundIconButton.small(
              icon: Icons.refresh,
              iconColor: Colors.orange,
              onPressed: (){
                
              },
            ),
            new RoundIconButton.large(
              icon: Icons.clear,
              iconColor: Colors.red,
              onPressed: (){
                
              },
            ),
            new RoundIconButton.large(
              icon: Icons.favorite,
              iconColor: Colors.green,
              onPressed: (){
                
              },
            ),
            new RoundIconButton.small(
              icon: Icons.lock,
              iconColor: Colors.purple,
              onPressed: (){

              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: new Column(
        children: <Widget>[
          showAlignmentCards ? new CardsSectionAlignment(context) : new CardsSectionDraggable(),
          
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
    );    
  }
}
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final VoidCallback onPressed;

  RoundIconButton.large({
    this.icon,
    this.iconColor,
    this.onPressed
  }): size = 60.0;

  RoundIconButton.small({
    this.icon,
    this.iconColor,
    this.onPressed
  }): size = 50.0;

  RoundIconButton({
    this.icon,
    this.iconColor,
    this.size,
    this.onPressed
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
            color: const Color(0x11000000),
            blurRadius: 10.0
          )
        ]
      ),
      child: new RawMaterialButton(
        shape: new CircleBorder(),
        elevation: 0.0,
        child: new Icon(
          icon,
          color: iconColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}