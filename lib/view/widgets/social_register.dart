
import 'package:bee_shopee/config/constants.dart';
import 'package:bee_shopee/view/login_screen.dart';
import 'package:bee_shopee/view/widgets/d_textfield.dart';
import 'package:flutter/material.dart';

class SocialRegister extends StatelessWidget {
  const SocialRegister(
      {Key? key, required this.title, this.googleFunc, this.fbFunc})
      : super(key: key);
  final String title;
  final Function()? googleFunc;
  final Function()? fbFunc;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          TitleMedium(text: title),
          addYSpace(val: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DSocialButton(
                isGoogle: true,
                function: googleFunc,
              ),
              SizedBox(
                width: dWidth(context) * .09,
              ),
              DSocialButton(
                isGoogle: false,
                function: fbFunc,
              )
            ],
          )
        ],
      ),
    );
  }
}
