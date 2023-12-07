import 'package:flutter/material.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

class LocoFoodTourPage extends StatefulWidget {
  const LocoFoodTourPage({super.key, required this.title});

  final String title;

  @override
  State<LocoFoodTourPage> createState() => _LocoFoodTourPageState();
}

class _LocoFoodTourPageState extends State<LocoFoodTourPage> {
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
                 Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,color: kbackgroundColor,)),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 90),
                      child: Center(
                        child: Image.asset('assets/locofoodtour.jpg',
                        width: 271,
                        height: 148,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Text('Loco FoodTour',
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
                      Text('Khám phá hương vị đặc trưng của ẩm thực Hà Nội với Bản đồ Food Tour Hà Nội! Từ các món ăn truyền thống đến những món ngon độc đáo, chúng tôi sẽ dẫn bạn tới những quán ăn nổi tiếng và ẩn mình trong những con hẻm nhỏ của thành phố này.',
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
                        child: Image.asset('assets/chekhucbach.jpeg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Chè khúc bạch là một món chè truyền thống có nguồn gốc từ Trung Quốc. Món này được làm từ bột nếp và đậu xanh, sau đó trộn với sữa đặc và thêm một số thành phần như nước cốt dừa, thạch nước cốt dừa, và trân châu. Chè khúc bạch thường có hương vị ngọt, béo ngậy và có độ mềm dẻo',
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
                        child: Image.asset('assets/bundaumamtom.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Có thể nói bún đậu mắm tôm Hàng Khay là địa chỉ được biết đến nhiều nhất trong list địa chỉ bún đậu mắm tôm Hà Nội. Một suất bún đậu ở đây có giá trung bình là 30.000 VNĐ. So với mức giá thì suất bún đậu ở đây khá đầy đặn. Đậu rán vàng giòn rụm, bún trắng mịn được cắt miếng vừa ăn, topping ăn kèm đa dạng bao gồm thịt chân giò, chả cốm, nem rán, dồi sụn, rau thơm… và đặc biệt là mắm tôm được pha chế vừa đậm đà vừa đưa miệng.',
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
                        child: Image.asset('assets/photai.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Nổi tiếng với món phở, được chế biến từ nước dùng hầm xương, thịt gà hoặc thịt bò, kèm theo rau sống, hành, và gia vị. Quán Phở Bát Đàn có không gian rộng rãi, phục vụ từ sáng đến tối. Phở ở đây được đánh giá ngon, thơm và đậm đà hương vị.',
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
                        child: Image.asset('assets/banhtom.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Bánh Tôm Hồ Tây là một địa chỉ nổi tiếng với món bánh tôm tại Hà Nội. Món bánh tôm tại quán được làm từ tôm tươi ngon và bọc trong lớp vỏ giòn rụm. Bánh tôm được chiên vàng, tạo ra lớp vỏ giòn màu vàng hấp dẫn.',
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
                      Text('Mr. Hùng,',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                        
                      ),),
                      Text('SĐT: 09993642351',
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