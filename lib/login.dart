import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Image.asset(
                'assets/images/login_logo.png',
                height: 120,
                width: 120,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Login to your Account',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 18.0,),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Material(
                    elevation: 4,
                    shadowColor: Colors.grey,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle:
                        TextStyle(color: Color(0xffBBBBBB), fontSize: 14.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.0),
                  Material(
                    elevation: 4,
                    shadowColor: Colors.grey,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle:
                        TextStyle(color: Color(0xffBBBBBB), fontSize: 14.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide:
                          BorderSide(color: Colors.transparent, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 22.0, vertical: 20.0),
                    child: RaisedButton(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      color: Color(0xFF1E319D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Center(
                    child: Text(
                      '- Or sign in with -',
                      style: TextStyle(
                          color: Color(0xffBBBBBB),
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton.icon(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(
                            FontAwesomeIcons.google,
                            size: 20.0,
                          ),
                          label: Text(
                            "",
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton.icon(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(
                            FontAwesomeIcons.facebookF,
                            size: 20.0,
                            color: Colors.blue,
                          ),
                          label: Text(
                            "",
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RaisedButton.icon(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          onPressed: () {},
                          color: Colors.white,
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            size: 20.0,
                            color: Colors.lightBlueAccent,
                          ),
                          label: Text(
                            "",
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
