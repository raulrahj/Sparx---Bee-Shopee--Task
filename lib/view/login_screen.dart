import 'package:bee_shopee/config/constants.dart';
import 'package:bee_shopee/view/widgets/d_button.dart';
import 'package:bee_shopee/view/widgets/d_textfield.dart';
import 'package:bee_shopee/view/widgets/social_register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding1),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(logo),
                  )),
              const TitleMedium(
                text: 'LOGIN',
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    DTextField(
                      label: "USERNAME",
                      hint: "Enter your Email/ Mobile Number/ user name ",
                      controller: _usernameController,
                    ),
                   
                    DTextField(
                        label: "PASSWORD",
                        hint: "Enter your Password",
                        controller: _passwordController),
                    addYSpace(val: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DButton(
                          isWhite: false,
                          text: 'LOG IN',
                          function: () {},
                        ),
                        DButton(
                          isWhite: true,
                          text: 'SIGN UP',
                          function: () {
                            Navigator.pushNamed(context, '/signUp');
                          },
                        )
                      ],
                    ),
                    addYSpace(),
                    const SocialRegister(title: 'LOGIN WITH')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DSocialButton extends StatelessWidget {
  const DSocialButton({
    Key? key,
    required this.isGoogle,
    this.function,
  }) : super(key: key);
  final bool isGoogle;
  final Function()? function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: function,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: primaryColorL),
              image: DecorationImage(
                  image: NetworkImage(
                    isGoogle ? google : facebook,
                  ),
                  fit: BoxFit.fill)),
        ));
  }
}
