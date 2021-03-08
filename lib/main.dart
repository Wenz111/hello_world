import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  debugPrint('Main Activity Start');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme
        ),
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hello World'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Model Rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: NetworkImage('https://i.ytimg.com/vi/wmnkAOO6Qo4/maxresdefault.jpg'),
            ),
            // Container(margin: EdgeInsets.all(2.0)),
            Image(
                image: AssetImage('assets/pikachu.jpg'),
            ),
            // Container(margin: EdgeInsets.all(2.0)),
            Text(
              'You have clicked the button this many times:',
              style: TextStyle(
                color: Colors.teal,
                fontFamily: 'AkayaTelivigala',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        icon: Icon(Icons.add, color: HexColor("#FEDBD0"),),
        label: Text('Click Here',
        style: GoogleFonts.rubik(
          textStyle: TextStyle(color: HexColor("#FEDBD0")), fontWeight: FontWeight.w500,
        )),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
