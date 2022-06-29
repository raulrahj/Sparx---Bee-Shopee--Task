import 'package:flutter/cupertino.dart';

const kPadding = 8.0;
const kPadding1 = 33.0;

const kRadius = 9.0;
const kHeight = 33.0;
const kHeight1 = 44.0;

//color

const primaryColor = Color(0xFFD59500);
const primaryColorL = Color(0xFFC4C4C4);
const kWhite = Color(0xFfFFFFFF);

//image

const splashLogo = 'lib/assets/images/splash-logo.png';
const logo = 'lib/assets/images/logo.png';
const facebook =
    'https://www.siasat.com/wp-content/uploads/2021/01/1200-900-Facebook.jpg';
const google = 'https://image3.mouthshut.com/images/imagesp/925000521s.png';

//size

double dHeight(context) => MediaQuery.of(context).size.height;
double dWidth(context) => MediaQuery.of(context).size.width;

Widget addYSpace({double val=33.0}) => SizedBox(
      height: val,
    );
Widget addXSpace({double val=10}) => SizedBox(
      width: val,
    );
