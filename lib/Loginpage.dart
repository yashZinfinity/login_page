import 'package:flutter/material.dart';
import 'package:login_page/Homepage.dart';
import 'package:login_page/Registerpage.dart';
import 'Registerpage.dart';


class LoginPage extends StatefulWidget {
  static const String id = "LoginPage";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(shrinkWrap: true, children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                alignment: Alignment(0.0, -0.4),
                height: 300.0,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assests/Images/2.png",
                      height: 120,
                      width: 150,
                      colorBlendMode: BlendMode.lighten,
                    ),
                  ],
                )),
            Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 220.0, 25.0, 0.0),
                height: 270.0,
                width: 350.0,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.lightBlue[50],
                    boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Form(
                  key: _fromKey,
                  child: ListView(
                    padding: EdgeInsets.only(top: 15.0),
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        autofocus: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Username';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.blueGrey,
                            ),
                            hintText: 'Username',
                            labelStyle: TextStyle(fontSize: 16.0),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)),
                            contentPadding: EdgeInsets.all(10.0)),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        autofocus: false,
                        obscureText: true,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter Password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.blueGrey,
                            ),
                            hintText: 'Password',
                            labelStyle: TextStyle(fontSize: 16.0),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.green)),
                            contentPadding: EdgeInsets.all(10.0)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Forget Password",
                            style: TextStyle( 
                              fontFamily: 'Lato',
                              fontStyle:FontStyle.italic,
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          //shadowColor: Colors.blueAccent,
                          color: Colors.blue,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_fromKey.currentState.validate()) {
                                  Navigator.of(context)
                                      .pushNamed(HomePage.id);
                                }
                              });
                            },
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: ImageIcon(
                                  AssetImage("assests/Images/facebook.png"),
                                  size: 60.0,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Center(
                                child: Text(
                                  "Login With Facebook",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 157.0, 0.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('New TO Zinfinty ?'),
              SizedBox(
                height: 5.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(RegisterPage.id);
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
