import 'package:flutter/material.dart';
const appcColor = Color.fromARGB(255, 130, 48, 48);

const decorationTextfield = InputDecoration(
    // To delete borders
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue,
      ),
    ),
    // fillColor: Colors.red,
    filled: true,
    contentPadding: EdgeInsets.all(8),
    hintStyle: TextStyle(
      fontSize: 18,
      color: Colors.grey,
      fontFamily: "my", 
      fontWeight: FontWeight.bold
    ),
  );

