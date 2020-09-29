import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather App"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.white,
          ),
          backgroundColor: Color.fromRGBO(36, 55, 85, 1),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: _body(),
        backgroundColor: Color.fromRGBO(36, 55, 85, 1),
      ),
    );
  }
}

final String text =
    "The mechanism may have been known, but it wasn't clear just how many viruses and bacteria were using method.";
SingleChildScrollView _body() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _imageHeader(),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 20),
          child: Text(
            "Wednesday - September 30",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        _todayInfo(),
        _nextDays(),
        SizedBox(
          height: 13,
        ),
        _bottomInfo(),
      ],
    ),
  );
}

Image _imageHeader() {
  return Image(
    image: AssetImage('assets/sdf.jpg'),
    fit: BoxFit.cover,
  );
}

Container _todayInfo() {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    padding: EdgeInsets.all(8),
    width: 230,
    decoration: BoxDecoration(
        color: Color.fromRGBO(50, 66, 92, 1),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Row(
      children: <Widget>[
        Icon(
          Icons.cloud,
          color: Colors.blue[400],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "10°C Rainy",
              style: TextStyle(color: Color.fromRGBO(10, 174, 254, 1)),
            ),
            Text(
              "Almatinskaya oblast, Almaty",
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    ),
  );
}

Wrap _nextDays() {
  return Wrap(
    children: List.generate(8, (int index) {
      return Container(
        margin: EdgeInsets.only(right: 10),
        child: Chip(
          padding: EdgeInsets.all(8),
          label: Text(
            "${index + 20}°C",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          avatar: Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Color.fromRGBO(50, 66, 92, 1),
        ),
      );
    }),
  );
}

Row _bottomInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Info with gismeteo.kz",
        style: TextStyle(color: Colors.white),
      ),
      SizedBox(
        width: 25,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow[700],
      ),
      Icon(
        Icons.star,
        color: Colors.yellow[700],
      ),
      Icon(
        Icons.star,
        color: Colors.yellow[700],
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      ),
      Icon(
        Icons.star,
        color: Colors.black,
      )
    ],
  );
}
