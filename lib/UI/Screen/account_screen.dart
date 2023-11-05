import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
        body: Center(child: Text('Account')));
  }
}

// class SearchFood extends SearchDelegate {
//   List<String> data = ['Vịt cỏ Vân Đình', 'Phở Bò', 'Phở Gà', 'Bún riêu'];
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [
//       IconButton(onPressed: (){
//         query = '';
//       }, icon: Icon(Icons.clear))
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(onPressed: (){
//       close(context, null);
//     }, icon: Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     List<String> matchquery = [];
//     for (var item in data) {
//       if (item.toLowerCase().contains(query.toLowerCase())) {
//         matchquery.add(item);
//       } //query là cái search từ bàn phím
//     }
//     return ListView.builder(itemBuilder: (context, index) {
//       var resul = matchquery[index];
//       return ListTile(
//         title: Text('$resul'),
//       );
//     },
//     itemCount: matchquery.length,

//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchquery = [];
//     for (var item in data) {
//       if (item.toLowerCase().contains(query.toLowerCase())) {
//         matchquery.add(item);
//       } //query là cái search từ bàn phím
//     }
//     return ListView.builder(itemBuilder: (context, index) {
//       var resul = matchquery[index];
//       return ListTile(
//         title: Text('$resul'),
//       );
//     },
//     itemCount: matchquery.length,

//     );
//   }

// }
