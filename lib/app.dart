import 'package:bee_shopee/config/constants.dart';
import 'package:bee_shopee/view/login_screen.dart';
import 'package:bee_shopee/view/otp_v.dart';
import 'package:bee_shopee/view/signup_screen.dart';
import 'package:bee_shopee/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bee Shopee',
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: GoogleFonts.montserratTextTheme().copyWith(
            titleMedium: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            labelMedium: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            bodySmall: const TextStyle(
              fontSize: 9.0,
              color: Color(0xFF595050),
            ),
            labelLarge: const TextStyle(
              fontSize: 13.0,
              color: Color(0xFF000000),
            ),
          ),
          primaryColor: primaryColor,
          primaryColorLight: primaryColorL,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
              elevation: MaterialStateProperty.all(5.0),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kRadius),
                ),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/login': (context) => const LoginScreen(),
          '/signUp': (context) => const SignUpScreen(),
          '/otpVerify': (context) => const OtpVerifyScreen()
        },
        home: const SplashScreen());
  }
}
