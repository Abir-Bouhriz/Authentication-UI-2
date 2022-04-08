import 'package:flutter/material.dart';
import './login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/login_logo.png',
                  height: 120,
                  width: 120,
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Create your Account',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                      hintText: 'Email',
                      hintStyle:
                      TextStyle(color: Color(0xffBBBBBB), fontSize: 14.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18.0),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                      hintText: 'Password',
                      hintStyle:
                      TextStyle(color: Color(0xffBBBBBB), fontSize: 14.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 18.0),
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
                      hintText: 'Confirm Password',
                      hintStyle:
                      TextStyle(color: Color(0xffBBBBBB), fontSize: 14.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                RaisedButton(
                  elevation: 2,
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  color: Color(0xFF1E319D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 60.0),
                Center(
                  child: Text(
                    '- Or sign up with -',
                    style: TextStyle(
                      color: Color(0xffBBBBBB),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        child: IconButton(
                          onPressed: (){},
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          icon: Icon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        child: IconButton(
                          onPressed: (){},
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          icon: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        child: IconButton(
                          onPressed: (){},
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),

//                    GoogleAuthButton(
//                      onPressed: () {},
//                      darkMode: false,
//                      style: AuthButtonStyle.icon,
//                      width: 90.0,
//                      height: 55.0,
//                      iconSize: 25.0,
//                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

