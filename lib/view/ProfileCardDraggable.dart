import 'package:flutter/material.dart';

class ProfileCardDraggable extends StatelessWidget
{
  final int cardNum;
  ProfileCardDraggable(this.cardNum);

  @override
  Widget build(BuildContext context)
  {
    return new Card
    (
      child: new Column
      (
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>
        [
          new Expanded
          (
            
            child: new Image.asset('res/portrait.jpeg', fit: BoxFit.cover),
          ),
          new Container(
            //alignment: MainAxisAlignment.spaceBetween,
            padding: new EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
            child: new Row
            (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>
              [
                
                new Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('Antoo, 18', style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700))],
                ),
                new Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Icon(Icons.arrow_drop_down_circle, color: Colors.grey, )
                  ],
                ),
                //new Text(/*'Card number $cardNum'*/'Antoo, 18', style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700)),
                //new Padding(padding: new EdgeInsets.only(bottom: 8.0)),
                //new Text('', textAlign: TextAlign.start),
                
              ],
              
            )
          )
        ],
      ),
    );
  }
}