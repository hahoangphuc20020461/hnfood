import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'account_screen.dart';
import 'foodtour_screen.dart';

class HomeCTPage extends StatefulWidget {
  const HomeCTPage({super.key, required this.title});

  final String title;

  @override
  State<HomeCTPage> createState() => _HomeCTPageState();
}

class _HomeCTPageState extends State<HomeCTPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  List<String> imgGoiy = ["assets/banhmihanoi.jpg", "assets/banhtom.jpg", "assets/banhduc.jpg", "assets/bunthang.jpg", "assets/chaosuon.jpg", "assets/charuoi.jpg", "assets/photai.jpg"];
  List<String> monanGoiy = ['Bánh Mì Hà Nội', 'Bánh Tôm Hồ Tây', 'Bánh Đúc Hà Nội', 'Bún Thang', 'Cháo sườn', 'Chả rươi', 'Phở bò'];
  List<double> saoGoiy = [4, 3.5, 3.5, 4.5, 4, 3, 5];

  List<String> imgTruyenthong = ["assets/banhcomhn.jpg", "assets/bunthang.jpg", "assets/bunocnguoi.jpg", "assets/banhmihanoi.jpg",
  "assets/buncha.jpg", "assets/phoga.jpg", "assets/photai.jpg", "assets/banhduc.jpg"];
  List<String> monanTruyenthong = ['Bánh cốm Hà Nội', 'Bún thang Hà Nội', 'Bún ốc nguội', 'Bánh mì', 'Bún chả', 'Phở gà', 'Phở bò', 'Bánh đúc'];
  List<double> saoTruyenthong = [4.5, 4, 3.5, 4.5, 4, 4, 5, 3.5];
  
  List<String> imgDuocuathich = ["assets/banhtom.jpg", "assets/bunrielcua.jpg", "assets/kemtrangtien.jpg", "assets/cftrung.jpg", "assets/banhdacua.jpg"];
  List<String> monanDuocuathic = ['Bánh tôm', 'Bún riêu cua', 'Kem Tràng Tiền', 'Cafe trứng', 'Bánh đa cua'];
  List<double> saoDuocuathic = [3, 5, 4.5, 2.5, 4];

  List<Widget> tutu = [];
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
                  fontFamily: 'Schyler',
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.height/4, 0),
              ),
              SafeArea(
                child: IconButton(onPressed: () async {
                  await showSearch(context: context, delegate: SearchFood());
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage(title: '',)));
                }, icon: Icon(Icons.search),color: Colors.yellowAccent,),
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
                    height: 150,
                    child: ListView.builder(
                      itemCount: imgGoiy.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                      return Padding(padding: EdgeInsets.only(left: 10, right: 10),
                      child: CardList(i: saoGoiy[index], img: imgGoiy[index], name: monanGoiy[index],),
                      );
                    },
                    ),
                  )
              ],
            ),
              ),
              //Container(padding: EdgeInsets.all(8),),
              Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("Món ăn truyền thống", style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),
                    ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: ListView.builder(
                        itemCount: imgTruyenthong.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                        return Padding(padding: EdgeInsets.only(left: 10, right: 10),
                        child: CardList(i: saoTruyenthong[index], img: imgTruyenthong[index], name: monanTruyenthong[index], ),
                        );
                      },
                      ),
                    )
                ],
              ),
                ),
                Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text("Món ăn được ưa thích", style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),
                    ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: ListView.builder(
                        itemCount: imgDuocuathich.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                        return Padding(padding: EdgeInsets.only(left: 10, right: 10),
                        child: CardList(i: saoDuocuathic[index], img: imgDuocuathich[index], name: monanDuocuathic[index],),
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
  List<String> data = ['Vịt cỏ Vân Đình', 'Phở Bò', 'Phở Gà', 'Bún riêu', 'Bánh tôm',
  'Kem tràng tiền', 'Cafe trứng', 'Bánh đa cua', 'Bánh cốm Hà Nội', 'Bún thang Hà Nội', 'Bún ốc nguội', 'Bánh mì', 'Bún chả'];
  List<Widget> data2 = [AccountPage(title: '',), FoodTourPage(title: '',)];
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
    bool found = false;
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
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => data2[index]));
          print('ngu');
        },
      );
    },
    itemCount: matchquery.length,

    );
  }

}
class CardList extends StatelessWidget {
  CardList({Key? key,
  required this.i,
  required this.name,
  required this.img,
  //required this.press
  }) : super(key: key);

  final double i;
  final String name;
  final String img;
  //final Widget press;
  
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);

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
          Container(
            width: 120,
            height: 80,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  '$img',
                ),
              ),
            ),
          ),
          TextButton(onPressed: (){
           // Navigator.push(context, MaterialPageRoute(builder: (context) => press));
          }, child: Text("$name", style: TextStyle(fontWeight: FontWeight.bold, color: kbackgroundAppbar),),),
          RatingBar.builder(
                    initialRating: i,
                    itemSize: 13,
                    //minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      rating = i;
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(content: Text('Cảm ơn bạn đã đánh giá $rating sao cho Food Tour này'),
                      //   backgroundColor: kbackgroundAppbar,
                      //   )
                      // );
                      // print(rating);
                    },
                  )
        ],
      ),
    );
  }
}