import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healtypat/screens/home_screen.dart';

// ignore: camel_case_types
class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeScreen(),
      ), 
      (route) => false);
    });

    return Scaffold(
      body: Stack(
        children: [
          Image.asset('asset/images/background.png', fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,),
          Center(
            child: SafeArea
            (child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 42,),
                Image.asset('asset/images/logo.png',
                 height: 22,
                 ),
                const SizedBox(height: 73,),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Helping You\nTo Keep ", 
                    style: GoogleFonts.manrope(
                      fontSize: 24,
                      color: const Color(0xFFDEE1FE),
                      letterSpacing: 3.5 / 100,
                      height: 152 / 100,
                    ),
                    children: const [
                  TextSpan(text: "Your Bestie", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)), TextSpan(text: "\nStay Healty")
                ]))
                ]
            )),
          )
        ]
      )
    );
  }
}