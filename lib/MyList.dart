import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  String day;
  String temp;
  MyList(this.day, this.temp);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromRGBO(77, 93, 119, 1),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: <Widget>[
          Text(
            day,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Text(
                temp + " °F",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
                size: 35,
              )
            ],
          )
        ],
      ),
    );
  }
}
