import 'package:flutter/material.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

class HPFoodTourPage extends StatefulWidget {
  const HPFoodTourPage({super.key, required this.title});

  final String title;

  @override
  State<HPFoodTourPage> createState() => _HPFoodTourPageState();
}

class _HPFoodTourPageState extends State<HPFoodTourPage> {
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
                        child: Image.asset('assets/hpfoodtour.png',
                        width: 271,
                        height: 148,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Text('HP FoodTour',
                    style: TextStyle(
                      fontFamily: 'flutterfonts',
                      fontSize: 25,
                      color: kbackgroundAppbar
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text('Thông tin tour',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'flutterfonts',
                        color: kbackgroundAppbar
                      ),),
                      Text('Hải Phòng từ lâu vốn đã luôn nổi danh với bản đồ ẩm thực phong phú. Thời gian gần đây, trên mạng xã hội “rần rần” với các review food tour Hải Phòng khiến ngày càng có nhiều người muốn đến đất cảng thử trải nghiệm các món ngon Hải Phòng.',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                      ),),
                      Padding(padding: EdgeInsets.all(8)),
                      Text('Mời các bạn dạo quanh 1 vòng foodtour này nhé.',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                      ),),

                      Padding(padding: EdgeInsets.all(8)),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset('assets/bmque.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Món bánh mì que nổi tiếng ở Hải Phòng',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'flutterfonts',
                        ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset('assets/chaosuon.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Món cháo sườn',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'flutterfonts',
                        ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset('assets/oc.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Hải sản cực tươi sống được bày bán ở chợ hải sản',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'flutterfonts',
                        ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset('assets/suidin.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Món tráng miệng sủi dìn cực ngon',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'flutterfonts',
                        ),
                        ),
                      ),


                      Padding(padding: EdgeInsets.all(10)),
                      Text('Thông tin liên hệ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: 'flutterfonts',
                        color: kbackgroundAppbar
                      ),),
                      Text('Văn phòng Tour HK,',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                        
                      ),),
                      Text('Mrs. Trang,',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                        
                      ),),
                      Text('SĐT: 09543642351',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                        
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
                      ),
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