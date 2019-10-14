import 'package:flutter/material.dart';
import 'package:login_page/Homepage.dart';
import 'Loginpage.dart';
import 'Registerpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         theme: ThemeData( 
          //  fontFamily: 'Lato',
           primarySwatch: Colors.red,
         ),
         initialRoute: LoginPage.id,
         routes: {
           LoginPage.id: (context) => LoginPage(),
           RegisterPage.id: (context) => RegisterPage(),
           HomePage.id: (context) => HomePage(),
         },
         home: LoginPage(),
       );
     }
}