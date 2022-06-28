import 'package:assu_app/constants/colors.dart';
import 'package:assu_app/constants/strings.dart';
import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(starterPageTitle),
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
    );
  }
}
