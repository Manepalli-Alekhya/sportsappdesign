import 'package:flutter/material.dart';
import 'package:app2/screens/'
class sports extends StatefulWidget {
  const sports({Key? key}) : super(key: key);

  @override
  State<sports> createState() => _sportsState();
}

class _sportsState extends State<sports> {
  List<Sports> Sports=[
    Sports(Name:'badminton',flag:'badminton.jpg'),
    Sports(Name:'football',flag:'football.jpg'),
    Sports(Name:'tennis',flag:'tennis.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
        backgroundColor: Colors.cyan,
        title: Text('choose the sport'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
