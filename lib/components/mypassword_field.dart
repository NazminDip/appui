// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyPasswordField extends StatefulWidget {
  final controller;
  final String hintText;

  const MyPasswordField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  var isSee = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        validator: ((value) {
          return passwordValidation(value);
        }),
        obscureText: isSee ? true : false,
        controller: widget.controller,
        decoration: InputDecoration(
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                isSee = !isSee;
              });
            },
            child: isSee
                ? const Icon(
                    Icons.lock,
                    color: Colors.white,
                  )
                : const Icon(Icons.lock_open, color: Colors.white),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.orange.shade200,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}

passwordValidation(value) {
  if (value.isEmpty) {
    return 'Enter Your  Password';
  } else if (value.length <= 7) {
    return 'Please Password at least 8 Character';
  }
  return null;
}
