import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        validator: ((value) {
          return name(value);
        }),
        controller: controller,
        decoration: InputDecoration(
          suffix: const Icon(Icons.person, color: Colors.white),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.orange.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}

//////////////////////////////// Validation
name(var value) {
  if (value.isEmpty) {
    return 'Enter Your Full Name';
  }
  return null;
}
