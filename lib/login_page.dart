// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              margin: EdgeInsets.symmetric(
                vertical:40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1500,
                    child: Text(
                      "Connect email adress",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize:25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  DelayedAnimation(
                    delay: 2500,
                    child: Text(
                      "It's recommended to connect your email adress for us to better protect your informations.",
                      style: GoogleFonts.poppins(
                        color: Colors.grey[600],
                        fontSize:16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            LoginForm(),
            SizedBox(height: 125),
             DelayedAnimation(
                    delay: 5500,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: const Color.fromARGB(209, 243, 43, 60),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 125,
                          vertical: 13,
                        ),
                      ),
                      child: Text(
                        'CONFIRM',
                        style: GoogleFonts.poppins(
                          color:Colors.white,
                          fontSize:15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context)=> MyApp(),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    ); 
  }
}

class LoginForm extends StatefulWidget{
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          DelayedAnimation(
            delay: 4500,
            child: TextField(
              obscureText: _obscureText ,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}