import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Home Page'),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.orange.withOpacity(0.5),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: const [
                    SizedBox(height: 10),
                    //logo
                    Icon(
                      Icons.android,
                      color: Colors.black,
                      size: 200,
                    ),

                    //welcome text
                    SizedBox(height: 5),
                    Text(
                      'Welcome To Home Page',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 248, 247, 247)),
                    ),
                    //username
                    SizedBox(height: 20),
                  ],
                ),
              ),

              //2nd part
              Row(
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
              ),
              //3rd part
              Row(
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
              ),
            ],
          ),
        ));
  }
}
