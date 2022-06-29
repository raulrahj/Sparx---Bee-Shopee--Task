import 'package:bee_shopee/config/constants.dart';
import 'package:flutter/material.dart';

class DTextField extends StatelessWidget {
  const DTextField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
  }) : super(key: key);
  final String label;
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: dHeight(context) * .09,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: kRadius,
                ),
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: primaryColor, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 38,
              // child: ClipRRect(
              //   borderRadius: BorderRadius.circular(kRadius),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                    controller: controller,
                    cursorColor: Colors.white,
                    style: Theme.of(context).textTheme.bodyLarge,
                    decoration: InputDecoration(
                     border: UnderlineInputBorder(
      borderRadius:BorderRadius.circular(kRadius)),
                      
                      fillColor: primaryColorL,
                      filled: true,
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.normal),
                      hintText: hint,
                    )),
              ),
            // ),
          ],
        ),
      ),
    );
  }
}

class TitleMedium extends StatelessWidget {
  const TitleMedium({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:5.0),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
