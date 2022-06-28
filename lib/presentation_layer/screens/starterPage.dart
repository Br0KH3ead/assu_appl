// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore_for_file: Unnecessary_new

import 'package:assu_app/constants/colors.dart';
import 'package:assu_app/constants/consts.dart';
import 'package:assu_app/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(starterPageTitle),
        backgroundColor: Mycolors.greenAccent,
        titleTextStyle: appBarTextstyle,
        leading: appBarMenu,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: appBarSettings,
          ),
        ],
      ),
      body: Center(child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32, vertical: 30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              starterPageTitle,
              textDirection: TextDirection.ltr,
              style: mainScreenTextStyle,
            ),
            starterPageImage,
            starterPageText,
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, signupScreenPage);
              },
              style: ElevatedButton.styleFrom(
                  primary: Mycolors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: GoogleFonts.lato(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(40.0))),
              child: Text("Commencer"),
            ),
          ],
        ),
      )),
    ));
  }
}
