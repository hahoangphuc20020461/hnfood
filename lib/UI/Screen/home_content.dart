import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeCTPage extends StatefulWidget {
  const HomeCTPage({super.key, required this.title});

  final String title;

  @override
  State<HomeCTPage> createState() => _HomeCTPageState();
}

class _HomeCTPageState extends State<HomeCTPage> {
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
      resizeToAvoidBottomInset: false,
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
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/7,
              child: Container(
                color: kbackgroundAppbar,
                child: Row(
            children: [
              // Container(
              //   alignment: Alignment.centerLeft,
              //   height: MediaQuery.of(context).size.height/13,
              //   width: MediaQuery.of(context).size.height/13,
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     image: DecorationImage(image: AssetImage('assets/logofood.png'),
              //     )
              //   ),
              // ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
              ),
              SafeArea(
                child: Text("HNFood",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  //fontFamily: 'klavika-bold'
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.height/4, 0),
              ),
              SafeArea(
                child: IconButton(onPressed: (){
                  //showSearch(context: context, delegate: SearchFood());
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(title: '',)));
                }, icon: Icon(Icons.search)),
              )
            ],
                    ),
              ),
            ),
            Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Gợi ý", style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                  ),
                  ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                      return Padding(padding: EdgeInsets.only(left: 10, right: 10),
                      child: CardList(),
                      );
                    },
                    ),
                  )
              ],
            ),
              ),
              Container(padding: EdgeInsets.all(10),),
              Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("Gợi ý", style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),
                    ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                        return Padding(padding: EdgeInsets.only(left: 10, right: 10),
                        child: CardList(),
                        );
                      },
                      ),
                    )
                ],
              ),
                ),
          ],
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
class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: const Offset(3, 4),
            blurRadius: 4,
          )
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: 120,
              height: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/vitcovandinh.jpg',
                  ),
                ),
              ),
            ),
          ),
          const Text("Vịt cỏ vân đình", style: TextStyle(fontWeight: FontWeight.bold),),
          const Text("4 sao", style: TextStyle(),)
        ],
      ),
    );
  }
}