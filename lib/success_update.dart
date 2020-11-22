import 'package:flutter/material.dart';

class SuccessUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        children: [
          Image(image: AssetImage('assets/images/petshop_logo.jpeg')),
          Text(
            "YOUR DATA IS UPDATED",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
