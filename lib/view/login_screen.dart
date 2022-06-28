import 'package:bee_shopee/config/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(logo),
            )),
        TitleMedium(text: 'LOGIN',),
        Expanded(
            flex: 1,
            child: Column(
              children: [],
            ))
      ])),
    );
  }
}

class TitleMedium extends StatelessWidget {
  const TitleMedium({
    Key? key,required this.text,
  }) : super(key: key);
final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: primaryColor,fontWeight: FontWeight.bold),
    );
  }
}
