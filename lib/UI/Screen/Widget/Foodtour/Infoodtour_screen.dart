import 'package:flutter/material.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

class InFoodTourPage extends StatefulWidget {
  const InFoodTourPage({super.key, required this.title});

  final String title;

  @override
  State<InFoodTourPage> createState() => _InFoodTourPageState();
}

class _InFoodTourPageState extends State<InFoodTourPage> {
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
              Stack(
                children: [
                  Container(
                  height: (MediaQuery.of(context).size.height),
                  decoration: BoxDecoration(
                    color: kbackgroundColor,
                  ),
                  
                ),
                  Container(
                  height: MediaQuery.of(context).size.height/6,
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
                    Container(
                      margin: EdgeInsets.only(top: 90),
                      child: Center(
                        child: Image.asset('assets/logofood.png',
                        width: 271,
                        height: 148,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text('Chi tiết tour',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),),
                    Text('Tour đi vòng quanh hồ Hoàn Kiếm, thưởng thức các món ăn truyền thống của Hà Nội quanh khu vực này .... .... ....',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 14
                    ),),
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Thông tin liên hệ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),),
                    Text('Văn phòng Tour HK,',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 14
                    ),),
                    Text('Mrs. Trang,',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 14
                    ),),
                    Text('SĐT:',
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 14
                    ),),
                    Padding(padding: EdgeInsets.all(10)),
                    Row(
                      children: [
                        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.comment), label: Text('Bình Luận Tour', style: TextStyle(color: kbackgroundAppbar))),
                        Padding(padding: EdgeInsets.all(8)),
                    ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.star, color: Colors.amber,), label: Text('Đánh giá Tour', style: TextStyle(color: kbackgroundAppbar))),
                      ],
                    )
                      ],
                    )
                    ,
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