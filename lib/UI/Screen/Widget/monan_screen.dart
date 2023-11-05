import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key, required this.title});

  final String title;

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: kbackgroundAppbar,
                  borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25))
                ),
                padding: EdgeInsets.only(top: 101),
                child: SizedBox(
                  //child: ,
                  height: 148,
                  width: 271,
                ),
              )),
            
          ],
        )
        );
  }
}

