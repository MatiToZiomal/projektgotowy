import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Witaj,',
                    style: TextStyle(
                      fontSize: 70.0, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'oto DrivieIt',
                    style: TextStyle(
                      fontSize: 70.0, fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(285.0, 190.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                      fontSize: 70.0, fontWeight: FontWeight.bold, color: Colors.pinkAccent
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent)
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'HASŁO',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent)
                    )
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    child: Text('Zapomniałem hasła',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline 
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
