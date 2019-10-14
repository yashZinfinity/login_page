import 'package:flutter/material.dart';
import 'package:login_page/Homepage.dart';
import 'package:login_page/Loginpage.dart';

FocusNode myFocusNode = new FocusNode();

class RegisterPage extends StatefulWidget {
  static const String id = "RegisterPage";
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.4,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.lightBlue, Colors.cyan],
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(95))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 32, top: 40),
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Form(
                  key: _fromKey,
              child: Column(
                children: <Widget>[
                  Container(
                      height: 90.0,
                     padding: EdgeInsets.only(top: 12.0,left: 5.0,right: 5.0),
                      child: TextFormField(
                        obscureText: false,
                        autocorrect: false,
                          validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter Fullname';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            hintText: 'Full Name',
                            labelText: 'Full Name',
                            labelStyle: TextStyle(color: Colors.blue)),
                      )),
                  Container(
                      height: 70.0,
                      padding: EdgeInsets.only(left: 5.0,right: 5.0),
                      child: TextFormField(
                        obscureText: false,
                        autocorrect: false,
                          validator: (String  value) {
                          if (value.isEmpty) {
                            return 'Please enter EmailAddress';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            hintText: 'EmailAddress',
                            labelText: 'EmailAddress',
                            labelStyle: TextStyle(color: Colors.blue)),
                      )),
                  Container(
                      height: 70.0,
                      padding: EdgeInsets.only(left: 5.0,right: 5.0),
                      child: TextFormField(
                        obscureText: false,
                        autocorrect: false,
                          validator: ( String value) {
                          if (value.isEmpty) {
                            return 'Please enter Phone Number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            hintText: 'Phone Number',
                            labelText: 'Phone Number',
                            labelStyle: TextStyle(color: Colors.blue)),
                      )),
                  Container(
                      height: 70.0,
                      padding: EdgeInsets.only(top: 5.0,left: 5.0,right: 5.0),
                      child: TextFormField(
                        obscureText: true,
                        autocorrect: false,
                          validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            hintText: 'Password',
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.blue)),
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0,right: 5.0,left:5.0),
                    height: 60.0,
                    //width: 325.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      //shadowColor: Colors.blueAccent,
                      color: Colors.blue,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_fromKey.currentState.validate()) {
                              Navigator.of(context).pushNamed(HomePage.id);
                            }
                          }
                          );
                        },
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Have an Account ?'),
                      SizedBox(
                        height: 5.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(LoginPage.id);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
