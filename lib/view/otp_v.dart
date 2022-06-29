import 'package:bee_shopee/config/constants.dart';
import 'package:bee_shopee/view/signup_screen.dart';
import 'package:bee_shopee/view/widgets/d_button.dart';
import 'package:bee_shopee/view/widgets/logo_set.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              logoSet(context),
              Text(
                'AN OTP HAS BEEN SENT TO YOUR MOBILE',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Container(
                width: dWidth(context),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: kPadding1),
                child: const Text(
                  '  Enter 6 digit otp',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ),
              Row(
                children: [
                  OTPTextField(
                    length: 5,
                    width: MediaQuery.of(context).size.width * .6,
                    style: const TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.underline,
                    onCompleted: (pin) {},
                  ),
                ],
              ),
              DTextButton(
                text: 'Resend otp',
                fuction: () {},
              ),
              DTextButton(
                text: 'Change number',
                fuction: () {},
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DButton(
                    isWhite: false,
                    text: 'SUBMIT',
                    function: () {},
                  ),
                  DButton(isWhite: true, text: 'CANCEL',function: (){},)
                ],
              ),
              addYSpace()
            ],
          ),
        ),
      ),
    );
  }
}

class DTextButton extends StatelessWidget {
  const DTextButton({
    Key? key,
    required this.text,
    this.fuction,
  }) : super(key: key);
  final String text;
  final Function()? fuction;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: fuction, child: Text(text)),
      ],
    );
  }
}
