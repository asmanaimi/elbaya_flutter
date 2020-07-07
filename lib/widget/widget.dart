import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Text("El Baya"),
    backgroundColor: Colors.pinkAccent[400],
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey[600]),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[300])),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.pink[300])));
}

TextStyle simpleTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 16);
}

TextStyle biggerTextStyle() {
  return TextStyle(color: Colors.black, fontSize: 17);
}