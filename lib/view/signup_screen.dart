import 'package:bee_shopee/config/constants.dart';
import 'package:bee_shopee/view/login_screen.dart';
import 'package:bee_shopee/view/widgets/d_button.dart';
import 'package:bee_shopee/view/widgets/d_textfield.dart';
import 'package:bee_shopee/view/widgets/logo_set.dart';
import 'package:bee_shopee/view/widgets/social_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding1),
          child: Column(
            children: [
              logoSet(context),
              const TitleMedium(text: 'SIGN UP'),
              Row(
                children: [
                  Expanded(
                    child: DTextField(
                        label: 'FIRST NAME',
                        hint: 'enter your first name',
                        controller: _firstNameController),
                  ),
                  addXSpace(),
                  Expanded(
                    child: DTextField(
                        label: 'LAST NAME',
                        hint: 'enter your last name',
                        controller: _lastNameController),
                  )
                ],
              ),
              DTextField(
                  label: 'EMAIL',
                  hint: 'Enter your email',
                  controller: _emailController),
              DTextField(
                  label: 'MOBILE NUMBER',
                  hint: 'Enter your Mobile Number',
                  controller: _mobileNumController),
              DTextField(
                  label: 'PASSWORD',
                  hint: 'set your Password',
                  controller: _passwordController),
              DTextField(
                  label: 'Confirm Password',
                  hint: 'Confirm your password',
                  controller: _confirmPassController),
              addYSpace(val: kPadding),
              Row(
                children: [
                  Checkbox(
                      fillColor: MaterialStateProperty.all(primaryColorL),
                      checkColor: primaryColor,
                      value: checkboxValue,
                      onChanged: (newVal) {
                        setState(() {
                          checkboxValue = newVal!;
                        });
                      }),
                  const TitleLarge(
                    text: 'I agree to the privacy policy',
                  )
                ],
              ),
              Text(
                policyText,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              addYSpace(val: 15),
              DButton(
                isWhite: false,
                text: 'SUBMIT',
                function: () {
                  Navigator.pushNamed(context, '/otpVerify');
                },
              ),
              const SocialRegister(title: 'SIGN UP WITH')
            ],
          ),
        ),
      )),
    );
  }
}

class TitleLarge extends StatelessWidget {
  const TitleLarge({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(fontWeight: FontWeight.bold, color: kBlack),
    );
  }
}
