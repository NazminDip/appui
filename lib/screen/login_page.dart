import 'package:appui/screen/regiser_page.dart';
import 'package:appui/screen/success_page.dart';

import 'package:flutter/material.dart';

import '../components/image_tie.dart';

import '../components/mypassword_field.dart';
import '../components/mytext_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  final _loginform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              //logo
              const Icon(
                Icons.android,
                color: Colors.orange,
                size: 200,
              ),

              //welcome text
              const SizedBox(height: 5),
              const Text(
                'Welcome To Login',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(255, 248, 247, 247)),
              ),
              //username
              const SizedBox(height: 20),
              //form
              Card(
                color: Colors.white.withOpacity(0.2),
                child: Form(
                    key: _loginform,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 25),
                        MyTextField(
                          controller: usernameController,
                          hintText: 'UserName',
                        ),
                        //password
                        const SizedBox(height: 25),
                        MyPasswordField(
                          controller: passwordController,
                          hintText: 'Password',
                        ),
                        //forget
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Forget Password?',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(248, 182, 2, 1))),
                              ),
                            ],
                          ),
                        ),
                        //signin
                        const SizedBox(height: 5),
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Container(
                            width: 320,
                            height: 50,
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8)),
                            child: InkWell(
                              onTap: logInButton,
                              child: const Center(
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),

              //google
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: const [
                    Expanded(
                        child: Divider(
                      color: Color.fromRGBO(248, 191, 4, 1),
                      thickness: 0.5,
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: Text(
                          'Or Continue with',
                          style: TextStyle(
                              color: Color.fromARGB(255, 243, 241, 241),
                              fontSize: 15),
                        ),
                      ),
                    ),

                    Expanded(
                        child: Divider(
                      color: Color.fromRGBO(248, 191, 4, 1),
                      thickness: 0.5,
                    )),

                    //google apple button
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ImageTie(imagePath: 'images/google.png'),
                  SizedBox(width: 10),
                  ImageTie(imagePath: 'images/apple.png'),
                ],
              ),
              //not a member register
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('I have No Account ?',
                      style: TextStyle(
                          color: Color.fromRGBO(252, 246, 246, 1),
                          fontSize: 18)),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text('Register',
                        style: TextStyle(
                            color: Color.fromRGBO(248, 191, 4, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  //validation login
  logInButton() {
    final isValid = _loginform.currentState!.validate();
    if (!isValid) {
      _loginform.currentState!.save();
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your Gmail or Password Is Incorrect",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.orange,
      ));
    } else if (isValid) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "Your Login Is Success",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.orange,
      ));
      return Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const SuccessPage();
      }));
    }
  }
}
