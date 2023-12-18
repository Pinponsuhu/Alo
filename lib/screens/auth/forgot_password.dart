import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itan/constants.dart';
import 'package:itan/screens/auth/mail_sent.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static String id = '/forgot-password';

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _emailAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed:()=> Navigator.pop(context), 
        icon: Icon(Icons.arrow_back_ios)
        ),
      ),
      body: Container(
        width: double.infinity ,
      color: Colors.white,
      padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot,\nPassword?", 
              style: GoogleFonts.lora(
                fontWeight: FontWeight.w500, 
                fontSize: 34,
                decoration: TextDecoration.none, 
                color: Colors.black,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your email address and we'll send you a link to reset your password", 
                style: mediumTextGrey(16),
                ), 
                SizedBox(
                height: 18,
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
                height: 24,
              ),
              SizedBox(
                width: double.infinity, 
                child: TextButton(
                  onPressed: ()=> Navigator.pushNamed(context, MailSentScreen.id), 
                  child: Text(
                    "Send Link", 
                    style: mediumText(16),
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
        ),
      ),
    );
  }
}