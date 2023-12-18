import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itan/screens/auth/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[100],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen())),
              child: Image.asset("images/storytelling.png")), 
            SizedBox(
              height: 4, 
            ), 
            Text(
              "Àló", 
              style: GoogleFonts.lora(
                fontWeight: FontWeight.bold, 
                fontSize: 36, 
                color: Colors.green[800], 
                decoration: TextDecoration.none
              )
              )
          ],
        ),
      ),
    );
  }
}