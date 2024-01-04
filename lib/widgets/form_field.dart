import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  String hintText;
  CustomFormField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool? boolValue;
    return SizedBox(
      width: size.width * 0.6,
      height: size.width * 0.11,
      child: TextFormField(
        style: TextStyle(
          color: Color.fromARGB(255, 182, 182, 182),
        ),
        decoration: InputDecoration(
          enabled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 182, 182, 182),
            fontSize: 12,
          ),
        ),
        cursorColor: Colors.white,
      ),
    );
  }
}
