import 'package:bee_shopee/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..forward();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _navigation(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage(
                'lib/assets/images/bg-splash.jpg',
              ),
              colorFilter: ColorFilter.mode(
                  primaryColor.withOpacity(0.6), BlendMode.darken),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: FadeTransition(
              opacity: _animation, child: Image.asset(splashLogo)),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future _navigation(context) async {
    await Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
  }
}
