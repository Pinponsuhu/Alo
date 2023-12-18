import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itan/constants.dart';
import 'package:itan/screens/auth/login.dart';

class MailSentScreen extends StatelessWidget {
  static String id = 'mail-sent';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            AspectRatio(
                aspectRatio: 16 / 9, child: Image(image: Svg("svg/mail.svg"))),
            SizedBox(
              height: 14,
            ),
            Text(
              "Mail Sent",
              style: GoogleFonts.lora(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
                "We just sent an email to your inbox with a link to reset your password.", 
                textAlign: TextAlign.center,
                style: mediumTextGrey(16),
                ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: ()=> Navigator.pushNamedAndRemoveUntil(context, LoginScreen.id, (route) => false),
                child: Text(
                  "Login",
                  style: mediumText(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 18)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
              ),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
