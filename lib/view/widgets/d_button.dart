import 'dart:ui';

import 'package:bee_shopee/config/constants.dart';
import 'package:flutter/material.dart';

class DButton extends StatelessWidget {
  const DButton({
    Key? key,
    required this.isWhite,
    required this.text,
    this.function,
  }) : super(key: key);
  final bool isWhite;
  final String text;
  final Function()? function;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dWidth(context)*.4,
      height: 44,
      
      child: ElevatedButton(
        onPressed: function,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                isWhite ? kWhite : Theme.of(context).primaryColor),
            elevation: MaterialStateProperty.all(8.0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(kRadius),
                  side: isWhite
                      ? const BorderSide(color: primaryColorL)
                      : BorderSide.none),
            )),
        child: ShadowText(data: text,isWhite: isWhite,)
      ),
    );
  }
}

class ShadowText extends StatelessWidget {
  const ShadowText({Key? key, required this.data,required this.isWhite,  }) : super(key: key);

  final String data;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return  ClipRect(
      child:  Stack(
        children: [
           Positioned(
            top: 4.0,
            left: 2.0,
            child:  Text(
              data,
              style: TextStyle(
              letterSpacing: 4,
              fontSize: 13,
              color: isWhite ? primaryColor : kWhite,
              ),
            ),
          ),
           BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child:  Text(data,style: TextStyle(
              letterSpacing: 4,
              fontSize: 13,
              color: isWhite ? primaryColor : kWhite,
              ), ),
          ),
        ],
      ),
    );
  }
}
