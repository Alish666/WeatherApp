import 'package:flutter/material.dart';

class WeatherInfoColumn extends StatelessWidget {
  final String _temperature;
  final String _secInfo;
  WeatherInfoColumn(this._temperature, this._secInfo);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.cloud,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 3),
          child: Text(
            _temperature,
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w300),
          ),
        ),
        Text(
          _secInfo,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
