import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 120),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 160,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.white,
                      offset: Offset(0, 0.5))
                ],
                borderRadius: BorderRadius.circular(18)),
            child: const Center(
                child: Text(
              'Raibow',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        //container2
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: 160,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.orange.shade100,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.white,
                      offset: Offset(0, 0.5))
                ],
                borderRadius: BorderRadius.circular(18)),
            child: const Center(
                child: Text(
              'Raibow',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
    //3rd part
  }
}
