  import 'package:bee_shopee/config/constants.dart';
import 'package:flutter/material.dart';

Container logoSet(BuildContext context) {
    return Container(
                alignment: Alignment.bottomCenter,
                height: dHeight(context) * .29,
                width: dWidth(context),
                child: Image.asset(logo));
  }
