import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() => runApp(Destiny());

class Destiny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title:Center(
            child: Text(
              'Destiny',
              style: TextStyle(
                color:Colors.white,
              ),
              ),
          ),
        ),
        body:Dest(),
      ),
    );
  }
}

Storyline storyline=Storyline();

class Dest extends StatefulWidget {
  @override
  _DestState createState() => _DestState();
}

class _DestState extends State<Dest> {
  int storyno=0,questionno=0;
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
       padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
      
      child:SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex:8,
              child:Center(
                child: Text(
                   storyline.getques(),
                   style:TextStyle(
                     color:Colors.white,
                   ),
                ),
              ),
            ),
            Expanded(
              flex:2,
              child:FlatButton(
                color: Colors.red, 
                onPressed: (){
                    setState(() {
                     storyline.choiceno(1);
                    });
                }, 
                child:Text(
                   storyline.getchoice1(),
                   style: TextStyle(
                     color:Colors.white,
                   ),
                 ),
                ),
              ),
            SizedBox(
                height: 20.0,
              ),
            Expanded(
              flex:2,
              child:Visibility(
                visible: storyline.makevisible(),
              child: FlatButton(
                  padding: EdgeInsets.all(8),
                  color: Colors.green, 
                  onPressed: (){
                      setState(() {
                        storyline.choiceno(2);
                      });
                  }, 
                  child:Text(
                     storyline.getchoice2(),
                     style: TextStyle(
                       color:Colors.white,
                     ),
                   ),
                  ),
              ),
              ),          
          ],
        ),
      ),
    );
  }
}