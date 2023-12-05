import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:hnfood/Controller/datacontroller.dart';

import '../../account_screen.dart';
import '../../foodtour_screen.dart';
import '../Foodtour/CommentTour_screen.dart';
import '../Foodtour/Infoodtour_screen.dart';
import '../Foodtour/RateTour_screen.dart';


class FoodLovePage extends StatefulWidget {
  const FoodLovePage({super.key, required this.title});

  final String title;

  @override
  State<FoodLovePage> createState() => _FoodLovePageState();
}

class _FoodLovePageState extends State<FoodLovePage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);

  List<String> name = ['Bánh đa cua', 'Bánh tôm', 'Kem Tràng Tiền', 'Phở Bò', 'Phở Gà'];
  List<String> img = ["assets/banhdacua.jpg", "assets/banhtom.jpg", "assets/kemtrangtien.jpg", "assets/photai.jpg", "assets/phoga.jpg"];
  List<double> sao = [3, 4.5, 4, 5, 3.5];
  List<Widget> change = [CommentTourPage(title: ''), InFoodTourPage(title: '',),
  RatingTourPage(title: '',), RatingTourPage(title: '',), RatingTourPage(title: '',)];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  //DataFoodTour? dataFoodTour;
  @override
  Widget build(BuildContext context) {
    //DataController dataController = Get.put(DataController());
    //DataFoodTour dataFoodTour;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbackgroundAppbar,
      ),
      resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Danh sách các món yêu thích',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    fontFamily: 'flutterfonts'
                  ),),
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: 10),
                  //   child: Text("Gợi ý", style: TextStyle(
                  //     color: Colors.brown,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 14
                  //   ),
                  //   ),
                  //   ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: img.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                        return Padding(padding: EdgeInsets.only(left: 10, right: 10),
                        child: CardList(i: sao[index], name: name[index], img: img[index], press: change[index],),
                        );
                      },
                      ),
                    )
                ],
              ),
                ),
                Container(padding: EdgeInsets.all(10),),
                // Padding(
                // padding: EdgeInsets.all(8),
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.only(bottom: 10),
                //       child: Text("Gợi ý", style: TextStyle(
                //         color: Colors.brown,
                //         fontWeight: FontWeight.bold,
                //         fontSize: 14
                //       ),
                //       ),
                //       ),
                //       SizedBox(
                //         width: double.infinity,
                //         height: 200,
                //         child: ListView.builder(
                //           itemCount: 10,
                //           scrollDirection: Axis.horizontal,
                //           itemBuilder: (BuildContext context, int index) {
                //           return Padding(padding: EdgeInsets.only(left: 10, right: 10),
                //           child: CardList(),
                //           );
                //         },
                //         ),
                //       )
                //   ],
                // ),
                //   ),
            ],
          ),
        )
        );
  }
}

class SearchFood extends SearchDelegate {
  List<String> data = ['HK FoodTour', '36 FoodTour', 'LB FoodTour', '3D FoodTour'];
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
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => data2[index]));
          print('ngu');
        },
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
  CardList({Key? key,
  required this.i,
  required this.name,
  required this.img,
  required this.press
  }) : super(key: key);

  final double i;
  final String name;
  final String img;
  final Widget press;
  
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
      child: Row(
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: 10),
            child: Container(
              width: 120,
              height: 100,
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
          ),
          Padding(padding: EdgeInsets.all(8)),
          Column(
            children: [
              Text(
                '$name',
                style: TextStyle(fontWeight: FontWeight.bold),),
              //Text("$i",)
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
          Padding(padding: EdgeInsets.all(8)),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => press));
          },
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(kbackgroundAppbar)),
          child: Text("chi tiết",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white
          ),))
        ],
      ),
    );
  }
}
