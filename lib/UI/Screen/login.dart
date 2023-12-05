import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
                    Center(
                      child: Container(
                        width: 265,
                        height: 183,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/logofood.png'
                            ),
                            )
                        ),
                        margin: EdgeInsets.only(top: 90),
                        // child: Center(
                        //   child: Image.asset('assets/logofood.png',
                        //   width: 271,
                        //   height: 148,
                        //   ),
                        // ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                  Text('Ăn ngon theo cách của bạn',
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 30,
                    color: kbackgroundAppbar
                  ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hãy đăng nhập để sử dụng nhé',
                      style: TextStyle(
                        fontFamily: 'Schyler',
                        fontSize: 17,
                        color: kbackgroundAppbar
                      ),
                      ),
                      Padding(padding: EdgeInsets.all(3)),
                      Icon(MdiIcons.noodles, color: kbackgroundAppbar,),
                    ],
                  ),
                  
              Padding(padding: EdgeInsets.all(12)),
              ElevatedButton.icon(onPressed: (){}, icon: Icon(MdiIcons.google, color: kbackgroundAppbar,), label: Text('Đăng nhập với Google', style: TextStyle(color: kbackgroundAppbar))),
            ],
          ),
        )
        );
  }
}
