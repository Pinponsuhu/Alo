import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itan/constants.dart';
import 'package:itan/screens/auth/login.dart';

class RegisterScreen extends StatefulWidget {
  static String id = '/register';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailAddress = TextEditingController();

  bool isVisible = false;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create\nNew Account",
              style: GoogleFonts.lora(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                height: 1.3,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Text("Already have an account?/", style: mediumText(fontSize: 18)),
                TextButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, LoginScreen.id),
                    child: Text(
                      "Login",
                      style: mediumTextGrey(fontSize: 18),
                    ))
              ],
            ),
            SizedBox(
              height: 38,
            ),
            TextFormField(
              controller: _emailAddress,
              decoration: InputDecoration(
                filled: true,
                hintText: "Username",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                fillColor: Colors.green[100],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _emailAddress,
              decoration: InputDecoration(
                filled: true,
                hintText: "Email Address",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                fillColor: Colors.green[100],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _emailAddress,
              obscureText: isVisible,
              decoration: InputDecoration(
                filled: true,
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                fillColor: Colors.green[100],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(!isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined ))
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: null,
                child: Text(
                  "Register",
                  style: mediumText(fontSize: 18,  fontWeight: FontWeight.w600),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 18)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
