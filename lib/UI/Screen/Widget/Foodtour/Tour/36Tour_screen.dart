import 'package:flutter/material.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../RateTour/Rate36Tour_screen.dart';

class basauFoodTourPage extends StatefulWidget {
  const basauFoodTourPage({super.key, required this.title});

  final String title;

  @override
  State<basauFoodTourPage> createState() => _basauFoodTourPageState();
}

class _basauFoodTourPageState extends State<basauFoodTourPage> {
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
                    Text('36 FoodTour',
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
                      Text('Đến với Thanh Hóa, ngoài thưởng ngoạn những cảnh đẹp “miền đất hứa”, bạn đừng quên thưởng thức những món ăn xứ Thanh ngon nức tiếng. Theo chân chúng tôi đảo một vòng Food tour Thanh Hóa nhé.',
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
                        child: Image.asset('assets/nem-chua-thanh-hoa-7.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Là đặc sản của Thanh Hóa, không ai không biết đến. Đặc sản nem chua Thanh Hóa được làm từ thịt nạc, bì lợn thái chỉ, ớt, tỏi, hạt tiêu và không thể thiếu đi lá đinh lăng. Bao bọc bên ngoài là lớp lá chuối tươi xanh. Nem ở đây có mùi vị rất khác so với các vùng miền khác, nó có đủ vị chua, cay, mặn, ngọt và dậy mùi thơm nồng nhưng không bị hắc. Là thành quả gìn giữ qua nhiều thế hệ, mang đến hương vị thơm ngon đặc biệt, và là món đặc sản nhiều người dành làm quà khi đến với xứ Thanh. Nem chua ăn theo cách truyền thống, chấm với tương ớt vẫn cứ gọi là ngon tuyệt đỉnh.',
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
                        child: Image.asset('assets/dac-san-thanh-hoa-cha-tom.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Không chỉ có nem chua, chả tôm cũng là một trong những món ngon nức tiếng xứ Thanh. Món ăn làm bao du khách mê mẩn khi đến đây bởi hương vị thơm ngon đặc trưng mà không nơi đâu có được.',
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
                        child: Image.asset('assets/dac-san-thanh-hoa-banh-khoai-tep.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Món này khá giống với bánh xèo của Hà Nội, nhưng phần nhân được thay bằng rau bắp cải, rau cần thái nhỏ và tép',
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
                        child: Image.asset('assets/dac-san-thanh-hoa-banh-rang-bua.jpg'),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Center(
                        child: Text('Thức quà ăn vặt này là một trong những món giản dị, gần gũi mà bạn nên thử khi đến đây. Được làm hoàn toàn từ nguyên liệu đồng quê: gạo tẻ, thịt lợn, mộc nhĩ đem gói trong lá chuối xanh. Đơn giản là vậy nhưng khi hoàn thiện lại cho ra thứ bánh béo ngon, thơm mềm rất cuốn miệng người thưởng thức.',
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
                      Text('Văn phòng Tour NH,',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                        
                      ),),
                      Text('Mrs. Vân,',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                        
                      ),),
                      Text('SĐT: 095436888351',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontFamily: 'flutterfonts',
                        
                      ),),
                      Padding(padding: EdgeInsets.all(10)),
                      Row(
                        children: [
                          ElevatedButton.icon(onPressed: (){
                           
                          }, icon: Icon(Icons.comment), label: Text('Bình Luận Tour', style: TextStyle(color: kbackgroundAppbar))),
                          Padding(padding: EdgeInsets.all(8)),
                      ElevatedButton.icon(onPressed: (){
 Navigator.push(context, MaterialPageRoute(builder: (context) => BaSauRatingTourPage(title: '',)));
                      }, icon: Icon(Icons.star, color: Colors.amber,), label: Text('Đánh giá Tour', style: TextStyle(color: kbackgroundAppbar))),
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