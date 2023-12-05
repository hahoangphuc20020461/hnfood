import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key, required this.title});

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        // appBar: AppBar(
        //   backgroundColor: kbackgroundAppbar,
        //   title: Row(
        //     children: [
        //       Text("HNFood",
        //       style: TextStyle(
        //         color: Colors.yellowAccent,
        //         //fontFamily: 'klavika-bold'
        //       ),
        //       ),
        //       Container(
        //         margin: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.height/4, 0),
        //       ),
        //       IconButton(onPressed: (){
        //         showSearch(context: context, delegate: SearchFood());
        //         //Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(title: '',)));
        //       }, icon: Icon(Icons.search))
        //     ],
        //   )
          
        // ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   backgroundColor: kbackgroundAppbar,
        //   items: [
        //   Icon(Icons.home),
        //   Icon(Icons.language),
        //   Icon(Icons.location_history)
        // ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                  height: (MediaQuery.of(context).size.height),
                  decoration: BoxDecoration(
                    color: kbackgroundColor,
                  ),
                  
                ),
                  Container(
                  height: MediaQuery.of(context).size.height/3.5,
                  decoration: BoxDecoration(
                  color: kbackgroundAppbar,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                  )
                  ),
                ),
                Column(
                  children: [
                    Center(
                      child:  Container(
                        // decoration: BoxDecoration(
                        //   shape: BoxShape.circle,
                        //   image: DecorationImage(
                        //     fit: BoxFit.cover,
                        //     image: AssetImage('assets/logofood.png'
                        //     ),
                        //     )
                        // ),
                        margin: EdgeInsets.only(top: 90),
                        child: CircularProfileAvatar(
                    '',
                    child: Image.asset('assets/avt.png'),
                    //borderColor: Colors.purpleAccent,
                    borderWidth: 5,
                    elevation: 2,
                    radius: 80,
                  ),
                        // child: Center(
                        //   child: Image.asset('assets/logofood.png',
                        //   width: 271,
                        //   height: 148,
                        //   ),
                        // ),
                      ),
                    ),
                    Text('Phúc',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'flutterfonts'
                    ),
                    ),
                    Padding(padding: EdgeInsets.all(25)),
                    Container(
                      width: MediaQuery.of(context).size.width -15,
                      child: ElevatedButton.icon(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kbackgroundAppbar)
                      ),
                      icon: Icon(Icons.article_outlined, color: kbackgroundColor,),
                      label: Text('Danh sách món ăn yêu thích', style: TextStyle(color: kbackgroundColor)))),
                      Padding(padding: EdgeInsets.all(8)),
                      Container(
                      width: MediaQuery.of(context).size.width -15,
                      child: ElevatedButton.icon(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kbackgroundAppbar)
                      ),
                      icon: Icon(Icons.contact_phone_outlined, color: kbackgroundColor,),
                      label: Text('Liên hệ với chúng tôi', style: TextStyle(color: kbackgroundColor)))),
                      Padding(padding: EdgeInsets.all(8)),
                      Container(
                      width: MediaQuery.of(context).size.width -15,
                      child: ElevatedButton.icon(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kbackgroundAppbar)
                      ),
                      icon: Icon(Icons.logout_outlined, color: kbackgroundColor,),
                      label: Text('Đăng xuất', style: TextStyle(color: kbackgroundColor)))),
                  ],
                ),
                ],
              )
            ],
          ),
        )
        );
  }
}
