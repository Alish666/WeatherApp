import 'package:WeatherApp/MyList.dart';
import 'package:WeatherApp/weatherColumn.dart';
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
  Map<String, List<String>> _daysTemps;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Weather Forecast"),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Color.fromRGBO(36, 55, 85, 1),
          ),
          backgroundColor: Color.fromRGBO(36, 55, 85, 1),
          body: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Column(
              children: <Widget>[
                _topSearch(),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Almaty, KZ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Wednesday, 30, 2020",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 35,
                ),
                _currentTemperature(),
                SizedBox(
                  height: 35,
                ),
                _additionalInfo(),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "7-DAY WEATHER FORECAST",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MyList('Monday', '15'),
                      SizedBox(
                        width: 10,
                      ),
                      MyList('Tuesday', '9'),
                      SizedBox(
                        width: 10,
                      ),
                      MyList('Wednesday', '5'),
                      SizedBox(
                        width: 10,
                      ),
                      MyList('Thursday', '0'),
                      SizedBox(
                        width: 10,
                      ),
                      MyList('Friday', '11'),
                      SizedBox(
                        width: 10,
                      ),
                      MyList('Saturday', '20'),
                      SizedBox(
                        width: 10,
                      ),
                      MyList('Sunday', '15'),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

Row _topSearch() {
  return Row(
    children: <Widget>[
      Icon(
        Icons.search,
        color: Colors.white,
      ),
      SizedBox(
        width: 15,
      ),
      Text(
        "Enter City Name",
        style: TextStyle(color: Colors.white, fontSize: 17),
      )
    ],
  );
}

Row _currentTemperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.wb_sunny,
        color: Colors.yellow,
        size: 80,
      ),
      SizedBox(
        width: 30,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "14 °F",
            style: TextStyle(
                fontSize: 37, color: Colors.white, fontWeight: FontWeight.w200),
          ),
          Text(
            "LIGHT RAIN",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w300),
          )
        ],
      )
    ],
  );
}

Row _additionalInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      WeatherInfoColumn("5", "km/hr"),
      SizedBox(
        width: 80,
      ),
      WeatherInfoColumn("3", "%"),
      SizedBox(
        width: 80,
      ),
      WeatherInfoColumn("20", "%")
    ],
  );
}
