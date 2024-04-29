import 'package:flutter/material.dart';

class Home_EventDetails extends StatelessWidget {
  final String title;
  final String description;
  final Widget button;

  const Home_EventDetails({
    required this.title,
    required this.description, required this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 7,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              button,
            ],
          )
        ],
      ),
    );
  }
}
