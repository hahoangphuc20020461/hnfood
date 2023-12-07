import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:comment_box/comment/test.dart';
import 'package:comment_box/main.dart';

class CommentTourPage extends StatefulWidget {
  const CommentTourPage({super.key, required this.title});

  final String title;

  @override
  State<CommentTourPage> createState() => _CommentTourPageState();
}

class _CommentTourPageState extends State<CommentTourPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Chuks Okwuenu',
      'pic': 'assets/logofood.png',
      'message': 'Tour đi mỏi chân quá',
      
    },
    {
      'name': 'Biggi Man',
      'pic': 'assets/logofood.png',
      'message': 'Tour này nhiều món ngon',
      
    },
    // {
    //   'name': 'Tunde Martins',
    //   'pic': 'assets/logofood.png',
    //   'message': 'Very cool',
      
    // },
    // {
    //   'name': 'Biggi Man',
    //   'pic': 'assets/logofood.png',
    //   'message': 'Very cool',
      
    // },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              //trailing: Text(data[i]['star'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kbackgroundAppbar,
        title: Text('Bình luận',
        style: TextStyle(
          color: kbackgroundColor
        ),
        ),
        centerTitle: true,
      ),
        // backgroundColor: kbackgroundColor,
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
        body: Container(
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: "assets/36foodtour.jpg"),
          child: commentChild(filedata),
          labelText: 'Hãy viết bình luận...',
          errorText: 'Comment không được để trống',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'New User',
                  'pic':
                      'assets/36foodtour.jpg',
                  'message': commentController.text,
                  //'star': '4 sao'
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: kbackgroundAppbar,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
        
        );
  }
}

class SearchFood extends SearchDelegate {
  List<String> data = ['HK FoodTour', '36 FoodTour', 'LB FoodTour', '3D FoodTour'];
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
          Column(
            children: [
              const Text("Vịt cỏ vân đình", style: TextStyle(fontWeight: FontWeight.bold),),
              const Text("4 sao", style: TextStyle(),),
              TextButton(onPressed: (){}, child: Text('Xem Bình Luận'))
              //ScrollableTextIndicator(text: Text('Tour đi vòng quanh hồ Hoàn Kiếm, thưởng thức các món ăn truyền thống của Hà Nội quanh khu vực này .... .... ....'),),
            ],
          ),
          
        ],
      ),
    );
  }
}