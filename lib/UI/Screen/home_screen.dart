import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hnfood/UI/Screen/account_screen.dart';
import 'package:hnfood/UI/Screen/home_content.dart';

import 'foodtour_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  int currentIndex = 0;
  late PageController pageController;
  final List<Widget> _pages = [
    HomeCTPage(title: ''),
    FoodTourPage(title: '',),
    AccountPage(title: '')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        // appBar: AppBar(
        //   backgroundColor: kbackgroundAppbar,
        //   title: Row(
        //     children: [
        //       // Container(
        //       //   alignment: Alignment.centerLeft,
        //       //   height: MediaQuery.of(context).size.height/13,
        //       //   width: MediaQuery.of(context).size.height/13,
        //       //   decoration: BoxDecoration(
        //       //     shape: BoxShape.circle,
        //       //     image: DecorationImage(image: AssetImage('assets/logofood.png'),
        //       //     )
        //       //   ),
        //       // ),
        //       Text("HNFood",
        //       style: TextStyle(
        //         color: Colors.yellowAccent,
        //         //fontFamily: 'klavika-bold'
        //       ),
        //       ),
        //       Container(
        //         //alignment: Alignment.centerRight,
        //         margin: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.height/4, 0),
        //       ),
        //       IconButton(onPressed: (){
        //         showSearch(context: context, delegate: SearchFood());
        //         //Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(title: '',)));
        //       }, icon: Icon(Icons.search))
        //     ],
        //   )
          
        // ),
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {
            pageController.jumpToPage(index);
          },
          backgroundColor: kbackgroundAppbar,
          items: [
          Icon(Icons.home),
          // IconButton(onPressed: (){
          //   pageController.jumpToPage(index);
          //   //Navigator.push(context, MaterialPageRoute(builder: (context) => FoodTourPage(title: '',)));
          //   }
          // , icon: Icon(Icons.language),),
          Icon(Icons.language),
          Icon(Icons.location_history)
        ]),
        body: SizedBox.expand(
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: (index){
              setState(() {
                currentIndex = index;
              });
            },
            children: _pages
          ), 
        )
        );
  }
}

class SearchFood extends SearchDelegate {
  List<String> data = ['Vịt cỏ Vân Đình', 'Phở Bò', 'Phở Gà', 'Bún riêu'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = '';
      }, icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchquery = [];
    for (var item in data) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      } //query là cái search từ bàn phím
    }
    return ListView.builder(itemBuilder: (context, index) {
      var resul = matchquery[index];
      return ListTile(
        title: Text('$resul'),
      );
    },
    itemCount: matchquery.length,

    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchquery = [];
    for (var item in data) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(item);
      } //query là cái search từ bàn phím
    }
    return ListView.builder(itemBuilder: (context, index) {
      var resul = matchquery[index];
      return ListTile(
        title: Text('$resul'),
      );
    },
    itemCount: matchquery.length,

    );
  }

}


