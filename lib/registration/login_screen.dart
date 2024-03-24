// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:super_market/generated/assets.dart';
import 'package:super_market/registration/signup_screen.dart';

import '../home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage(Assets.assetsLogin),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: "0Xj4K@example.com",
                      labelStyle: TextStyle(
                        color: Color(0xff010d33),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff010d33),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff010d33),
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff010d33),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff010d33),
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: "**********",
                      labelStyle: TextStyle(
                        color: Color(0xff010d33),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff010d33),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff010d33),
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff010d33),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff010d33),
                          ))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, right: 40),
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password?',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 40, right: 40),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff010d33),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff010d33),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xff010d33),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
