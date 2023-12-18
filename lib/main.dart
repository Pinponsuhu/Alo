

import 'package:flutter/material.dart';
import 'package:itan/screens/auth/forgot_password.dart';
import 'package:itan/screens/auth/login.dart';
import 'package:itan/screens/auth/mail_sent.dart';
import 'package:itan/screens/auth/register.dart';
import 'package:itan/screens/home.dart';
import 'package:itan/screens/splash.dart';
import 'package:itan/screens/story_details.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: SplashScreen(),
    routes: {
      LoginScreen.id: (context) => LoginScreen(),
      RegisterScreen.id : (context) => RegisterScreen(),
      ForgotPasswordScreen.id : (context) => ForgotPasswordScreen(),
      MailSentScreen.id : (context) => MailSentScreen(),
      HomeScreen.id : (context) => HomeScreen(), 
      StoryDetails.id : (context) => StoryDetails(),
    },
  
  ));
}
