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
                    'Login to your Account',
                    style: TextStyle(
                      color: Colors.grey[450],
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
                SizedBox(height: 30.0),
                RaisedButton(
                  elevation: 2,
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
                SizedBox(height: 60.0),
                Center(
                  child: Text(
                    '- Or sign in with -',
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
                        elevation: 2,
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
                        elevation: 2,
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
                        elevation: 2,
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
                SizedBox(height: 80.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account ? ',
                      style: TextStyle(
                        color: Color(0xffBBBBBB),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        ' Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
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
