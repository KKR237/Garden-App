import 'package:flutter/material.dart';
import '../utils/util.dart';
import 'home.dart';
import 'menu.dart';

class SplashSC extends StatefulWidget {
  const SplashSC({super.key});

  @override
  State<SplashSC> createState() => _SplashSCState();
}

class _SplashSCState extends State<SplashSC> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MenuSC()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appYellow,
      body: const SafeArea(
          child: Center(
            child: Image(image: AssetImage('assets/logo.png'),height: 250,width: 250,),
          )
      ),
    );
  }
}
