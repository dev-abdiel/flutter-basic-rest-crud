import 'package:flutter/material.dart';
import 'package:basic_rest_crud/src/constants/constants.dart' as constants;

class SignInTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: [
          Text(
            constants.signInTitle,
            style: TextStyle( fontSize: 25.0, fontWeight: FontWeight.w400 )
          ),
          Container(
            margin: const EdgeInsets.symmetric( vertical: 3.0 ),
            height: 3.0,
            width: 100.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}