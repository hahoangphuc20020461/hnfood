import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

import 'logo.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key, required this.title});

  final String title;


  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {


 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 250, 250, 250),
      body: EasySplashScreen(
        logo: Image.network("https://gifdb.com/images/high/adorable-bear-swallowing-yummy-food-vljqahsknnf0w1n5.gif",
        width: 300,
        height: 300,),
        // child: ,
        backgroundColor: Colors.white,
        showLoader: false,
        navigator: LogoPage(title: ""),
        durationInSeconds: 3,
       )
    );
  }
}
