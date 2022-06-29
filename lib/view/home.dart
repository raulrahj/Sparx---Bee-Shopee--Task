import 'package:bee_shopee/config/constants.dart';
import 'package:bee_shopee/view/widgets/logo_set.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(vsync: this,duration: const Duration(seconds: 6))..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInToLinear,
  );
  @override
  Widget build(BuildContext context) {
     const double smallLogo = 100;
    const double bigLogo = 200;
    return Scaffold(
      body: SafeArea(child: 
      LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;
          return Stack(

            children: [
             
              PositionedTransition(rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        const Rect.fromLTWH(100, 1000, smallLogo, smallLogo), biggest),
                    end: RelativeRect.fromSize(
                        const Rect.fromLTWH(100,
                            0, bigLogo, bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )), child: logoSet(context))
            ],
          );
        }
      )),
    );
  }
}
