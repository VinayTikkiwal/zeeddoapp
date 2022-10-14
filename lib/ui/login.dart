import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/AllColours.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Please sign up to your Zeeddo Account',
                  style: TextStyle(
                    color: ColorSelect.introtext_blue,
                    fontSize: 14,
                    fontFamily: 'Urbanist',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Email',
                  style: TextStyle(
                      color: ColorSelect.dark_black,
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: ColorSelect.dark_black)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Password',
                  style: TextStyle(
                      color: ColorSelect.dark_black,
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: ColorSelect.dark_black)),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                height: 40,
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: ColorSelect.pink_indicator),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'GOOGLE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.center,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'FACEBOOK',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
