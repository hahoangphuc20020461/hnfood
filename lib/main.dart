// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'UI/Screen/Widget/Foodtour/CommentTour_screen.dart';
import 'UI/Screen/Widget/Foodtour/Tour/Hpfoodtour.dart';
import 'UI/Screen/Widget/Foodtour/RateTour_screen.dart';
import 'UI/Screen/Widget/Monan/Banhdacua_screen.dart';
import 'UI/Screen/Widget/Monan/Buncha_screen.dart';
import 'UI/Screen/Widget/Monan/Bunoc_screen.dart';
import 'UI/Screen/Widget/Monan/Bunrielcua_screen.dart';
import 'UI/Screen/Widget/Monan/Listmonanyeuthich.dart';
import 'UI/Screen/Widget/Monan/Phobo_screen.dart';
import 'UI/Screen/Widget/Rate/rating_screen.dart';
import 'UI/Screen/Widget/comment_screen.dart';
import 'UI/Screen/account_screen.dart';
import 'UI/Screen/home_screen.dart';
import 'UI/Screen/login.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BanhDaCuaPage(title: '')//const IntroPage(title: 'Flutter Demo Home Page'),
    );
  }
}

