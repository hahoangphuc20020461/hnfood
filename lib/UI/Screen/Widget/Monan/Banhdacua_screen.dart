import 'package:flutter/material.dart';
import 'package:hnfood/UI/Screen/Widget/Rate/rating_screen.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../comment_screen.dart';

class BanhDaCuaPage extends StatefulWidget {
  const BanhDaCuaPage({super.key, required this.title});

  final String title;

  @override
  State<BanhDaCuaPage> createState() => _BanhDaCuaPageState();
}

class _BanhDaCuaPageState extends State<BanhDaCuaPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Bạn có thể tìm thấy bánh đa cua tại nhiều thành phố khác tại miền Bắc, nhưng hương vị bánh đa cua Hà Nội mộc mạc, giản dị là điều khiến người ta khó quên. Sợi bánh đa dai dai ăn cùng nước dùng đậm vị, thêm chút giấm chua thanh thanh và ớt cay nồng là đúng chuẩn.';
  String congthuc = 'Nguyên liệu:\n Cua đồng: 500gr\nSườn thăn: 300gr\nThịt nạc xay: 150gr\nCà chua: 2 quả\nMỡ phần: 100gr\nLá lốt, mộc nhĩ, hành tím, hành lá, rau ngò\nBánh đa đỏ\nRau sống ăn kèm\n \nCách làm:\nBước 1:\nCua mua về rồi đem rửa sạch, bỏ yếm, bóc mai\nBước 2:\nGiã lấy nước cua. Dùng tăm khều ra cho vào một bát nhỏ để riêng.Rửa sạch sườn với một chút muối, cho vào nồi luộc sơ qua. Tiếp theo rửa sạch lần nữa mới đem ninh làm nước dùng.\nBước 3:\nLọc thịt cua qua rây lấy nước, nêm nếm chút gia vị và một chút đầu đũa mắm tôm để tạo thêm mùi. Vừa đun các bạn vừa khuấy để để gạch cua nổi đều. Sau đó, vớt gạch ra bát và đổ nước dùng cua vào nồi nước dùng xương. Đun sôi lại lần nữa rồi múc gạch cua vào.\nBước 4:\nThái cà chua ra xào thơm cùng hành và dầu ăn, xào xong thì cho vào nồi nước dùng để tạo vị chua nhẹ';
  String quanngon = 'Bánh đa cua Hàng Đồng: 8 Hàng Đồng, Q.Hoàn Kiếm\nBánh đa cua Phố Trung Liệt: 143 Trung Liệt, Q.Đống Đa\nBánh đa cua và miến trộn Huỳnh Thúc Kháng: 16 Huỳnh Thúc Kháng, Q.Đống Đa';
  String content = 'Bạn có thể tìm thấy bánh đa cua tại nhiều thành phố khác tại miền Bắc, nhưng hương vị bánh đa cua Hà Nội mộc mạc, giản dị là điều khiến người ta khó quên. Sợi bánh đa dai dai ăn cùng nước dùng đậm vị, thêm chút giấm chua thanh thanh và ớt cay nồng là đúng chuẩn.';
  late PageController pageController;
  // List<Widget> inf = [
  //   Thongtin(),
  //   Congthuc(),
  //   Quanngon()
  // ];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: kbackgroundAppbar,
              //       borderRadius: const BorderRadius.only(
              //                     bottomLeft: Radius.circular(25),
              //                     bottomRight: Radius.circular(25))
              //     ),
              //     padding: EdgeInsets.only(top: 101),
              //     child: SizedBox(
              //       //child: ,
              //       height: 148,
              //       width: 271,
              //     ),
              //   )),
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
                Center(
                  child: Container(
                    width: 271,
                    height: 148,
                    decoration: BoxDecoration(
                            //shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/banhdacua.jpg'
                              ),
                              )
                          ),
                    margin: EdgeInsets.only(top: 90),
                    // child: Center(
                    //   child: Image.asset('assets/buncha.jpg',
                    //   width: 271,
                    //   height: 148,
                    //   ),
                    // ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {
                        setState(() {
                          content = thongtin;
                        });
                      }, child: Text('Thông tin', style: TextStyle(color: kbackgroundAppbar),),),
                      TextButton(onPressed: () {
                        setState(() {
                          content = congthuc;
                        });
                      }, child: Text('Công thức', style: TextStyle(color: kbackgroundAppbar))),
                      TextButton(onPressed: () {
                        setState(() {
                          content = quanngon;
                        });
                      }, child: Text('Quán ngon', style: TextStyle(color: kbackgroundAppbar))),
                    ],
                  ),
                ),
              Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width/1.2,
            child: Card(
              color: kbackgroundAppbar,
              shape: RoundedRectangleBorder(
                side: BorderSide(
            color: kbackgroundAppbar,
            width: 2.0,
              ),
            ),
              child: ScrollableTextIndicator(
                indicatorBarColor: kbackgroundAppbar,
                indicatorThumbColor: kbackgroundAppbar,
                text: Text(content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: kbackgroundColor
                ),),
              )
            ),
          ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 740),
              child: Column(
                children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            isclick = !isclick;
                          });
                        },
                        icon: Icon(isclick ? Icons.favorite : Icons.favorite_border_outlined),
                        color: Colors.pink,
                        ),
                        Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton.icon(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CommentPage(title: '',)));
                        }, icon: Icon(Icons.comment), label: Text('Bình Luận', style: TextStyle(color: kbackgroundAppbar))),
                        Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton.icon(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RatingPage(title: '',)));
                        }, icon: Icon(Icons.star, color: Colors.amber,), label: Text('Đánh giá', style: TextStyle(color: kbackgroundAppbar))),
                      ],
                    ),
                    
                ],
              ),
            )
                ],
              )
            ],
          ),
        )
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
              height: 200,
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
              ScrollableTextIndicator(text: Text('Tour đi vòng quanh hồ Hoàn Kiếm, thưởng thức các món ăn truyền thống của Hà Nội quanh khu vực này .... .... ....'))
            ],
          ),
        ],
      ),
    );
  }
}
// class Thongtin extends StatelessWidget {
//   const Thongtin({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 300),
//       child: Center(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height/2,
//           width: MediaQuery.of(context).size.width/1.2,
//           child: Card(
//             color: Color.fromARGB(255, 230, 233, 234),
//             shape: RoundedRectangleBorder(
//               side: BorderSide(
//     color: Colors.black,
//     width: 2.0,
//             ),
//           ),
//             child: ScrollableTextIndicator(
//               text: Text('Bún ngan Hà Nội là một trong những món ăn truyền thống vẫn giữ được vị trí đặc biệt trong lòng người dân Thủ đô. Bún ngan hấp dẫn thực khách bởi phần nước dùng ngọt thanh, thịt ngan mềm, thơm ăn kèm với măng tươi vô cùng cuốn miệng. Món bún ngan Hà Nội trông có vẻ đơn giản, nhưng khi đã nếm qua bất cứ thực khách nào cũng dễ dàng bị chinh phục bởi vị ngon tinh tế của nó. Người nấu bún ngan khéo sẽ khiến bún ngan thêm đậm vị và thơm nồng hơn từ nước dùng cho đến những thớ thịt ngan thật mềm. Ngày nay bún ngan Hà Nội cũng đã có mặt ở nhiều nơi, song',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16
//               ),),
//             )
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Congthuc extends StatelessWidget {
//   const Congthuc({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 300),
//       child: Center(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height/2,
//           width: MediaQuery.of(context).size.width/1.2,
//           child: Card(
//             color: Color.fromARGB(255, 230, 233, 234),
//             shape: RoundedRectangleBorder(
//               side: BorderSide(
//     color: Colors.black,
//     width: 2.0,
//             ),
//           ),
//             child: ScrollableTextIndicator(
//               text: Text('cho 1 bat pho thap cam db',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16
//               ),),
//             )
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Quanngon extends StatelessWidget {
//   const Quanngon({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 300),
//       child: Center(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height/2,
//           width: MediaQuery.of(context).size.width/1.2,
//           child: Card(
//             color: Color.fromARGB(255, 230, 233, 234),
//             shape: RoundedRectangleBorder(
//               side: BorderSide(
//     color: Colors.black,
//     width: 2.0,
//             ),
//           ),
//             child: ScrollableTextIndicator(
//               text: Text('banh cuan doi can, pho ngo tho quan, bun riel pho co, bun riel bach mai, che khuc bach, banh cuan cao bang',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16
//               ),),
//             )
//           ),
//         ),
//       ),
//     );
//   }
// }