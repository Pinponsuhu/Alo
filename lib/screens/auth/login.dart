import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itan/constants.dart';
import 'package:itan/screens/auth/forgot_password.dart';
import 'package:itan/screens/auth/register.dart';
import 'package:itan/screens/home.dart';

class LoginScreen extends StatefulWidget {
  static String id = '/login';


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _emailAddress = TextEditingController();

  final GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey👋🏾,\nWelcome Back", 
              style: GoogleFonts.lora(
                fontWeight: FontWeight.w500, 
                fontSize: 30,
                decoration: TextDecoration.none, 
                color: Colors.black,
              ),
              ), 
              
              Row(
                children: [
                  Text(
                    "Don't have an account?/", 
                    style: mediumText(fontSize: 18.0)
                    ), 
                  TextButton(onPressed: ()=> Navigator.pushNamed(context, RegisterScreen.id), child: Text(
                    "Register", 
                    style: mediumTextGrey(fontSize: 18),
                    ))
                ],
              ), 
              SizedBox(
                height: 34,
              ),
                TextFormField(
                controller: _emailAddress,
                decoration: InputDecoration(
                  filled: true, 
                  hintText: "Email Address", 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8), 
                    borderSide: BorderSide.none
                  ), 
                  fillColor: Colors.green[100], 
                  contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 10), 
                ),
                
                
              ),
              SizedBox(
                height: 16,
              ),
                TextFormField(
                controller: _emailAddress,
                decoration: InputDecoration(
                  filled: true, 
                  hintText: "Password", 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8), 
                    borderSide: BorderSide.none
                  ), 
                  fillColor: Colors.green[100], 
                  contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 10), 
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Text(
                    "Forgot Password?/", 
                    style: mediumText(fontSize: 18.0)
                    ), 
                  TextButton(
                    onPressed:()=> Navigator.pushNamed(context, ForgotPasswordScreen.id), 
                  child: Text(
                    "Reset", 
                    style: mediumTextGrey(fontSize: 18),
                    ))
                ],
              ), 
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity, 
                child: TextButton(
                  onPressed: ()=> Navigator.pushNamed(context, HomeScreen.id), 
                  child: Text(
                    "Login", 
                    style: mediumText(fontSize: 18, fontWeight: FontWeight.w600),
                    ), 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber), 
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 18)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      )
                    ),
                  ),
              ), 
          ],
      )),
      ),
    );
  }
}