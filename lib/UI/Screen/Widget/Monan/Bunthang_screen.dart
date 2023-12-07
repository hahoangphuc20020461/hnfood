import 'package:flutter/material.dart';
import 'package:hnfood/UI/Screen/Widget/Rate/rating_screen.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../comment_screen.dart';

class BunthangPage extends StatefulWidget {
  const BunthangPage({super.key, required this.title});

  final String title;

  @override
  State<BunthangPage> createState() => _BunthangPageState();
}

class _BunthangPageState extends State<BunthangPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Bún thang Hà Nội có thể gọi là “đệ nhất cầu kỳ” vì phải dùng đến 20 nguyên liệu để làm nên tô bún thơm ngon. Thành phần chính bao gồm: trứng gà chiên mỏng xắt nhỏ, lườn gà xé, giò lụa xắt mỏng, tôm, mực, rau răm, v.v... tất cả tạo nên tô bún sắc màu đẹp mắt và ngon miệng. Quả xứng đáng là món ăn ngon Hà Nội nổi bật, đúng không nào? ';
  String congthuc = 'Nguyên liệu:\n Gà ta: 1 con \nXương ống: 500g \nTôm he khô: 100g \nMực khô: 1 con ( có thể thay bằng sá sùng) \nCủ cải khô: 100g\nTrứng gà: 3 quả \nNấm hương: 10 cái \nRau răm: 1 mớ\nMắm tôm: 1 chén con \nGiò lụa: 200g \nTinh dầu cà cuống (không có bỏ qua).\nHành khô: 3 củ \nHành lá \nGừng tươi: 1 củ \nBún rối.\nGia vị: nước mắm, muối, hạt nêm, bột canh tôm, giấm, đường cát trắng\n \n Cách làm:\nBước 1: Sơ chế các loại rau củ \nHành lá, mùi tàu, rau răm đem nhặt rồi rửa sạch với nước và để ráo rồi đem thái nhỏ, để riêng. Nấm khô nhặt sạch, ngâm nở sau đó cắt bỏ chân và cắt nhỏ. Để lại 3 chiếc nấm hương để cho vào nước dùng ninh cho dậy mùi Gừng và hành khô đã rửa sạch đem nướng cho đến khi nào chín và có mùi thơm.\n Bước 2: Sơ chế mực và tôm khô \nMực khô đem nướng chín sau đó giã hơi dập. Tôm he khô tách riêng đầu và vỏ tôm để nướng thơm bằng lò vi sóng, sau đó đem giã hơi dập.  Phần thịt tôm ngâm nước ấm nở, vắt khô\nBước 3: Sơ chế gà \nGà ta vặt sạch lông, sau đó đem xát muối toàn bộ gà để khử mùi hôi. Tiếp đó bạn rửa lại gà với nước và để ráo. Đem luộc chín gà sau đó nhanh tay thả vào chậu nước đá ngâm cho da gà giòn. Gà vớt ra để nguội, lọc xương, lấy phần lườn gà xé sợi nhỏ, phần da gà thái sợi nhỏ như bún\n Bước 4: Nấu nước dùng \nXương lợn rửa sạch và đem chần qua nước sôi để khử mùi hôi cho nước dùng. Sau đó bạn cho phần xương lợn vào nước luộc gà để ninh khoảng 1 tiếng trong nồi ấp suất điện Khi ninh được 1 tiếng, bạn cho phần tôm he khô, mực khô đã nướng vào trong túi lọc và thả vào nước dùng. Thêm hành khô, gừng đã nướng sơ, 3 cái nấm hương vào ninh tiếp 1 tiếng nữa. Khi nước dùng đã ninh gần đủ thời gian, bạn cho 1 thìa hạt nêm, 1 thìa đường, 2 thìa bột canh tôm và 1 thìa nước mắm. Bạn nên nêm nếm nhạt hơn khẩu vị để khi ăn cho mắm tôm vào bát không bị mặn.\n Bước 5: Sơ chế các củ cải khô \nCủ cải khô cắt thành khúc vừa ăn. Sau đó đem ngâm nở củ cải khô trong nước ấm khoảng 30 phút rồi đem rửa sạch. Củ cải sau khi rửa bạn vắt bớt nước và đem trộn với 2 thìa dấm, 1 thìa đường trắng, 1 thìa nước mắm, tương ớt ( hoặc ớt tươi) để ngâm 30 phút để củ cải thấm đều gia vị \n Bước 6: Làm ruốc tôm \n Phần tôm he khô sau khi ngâm nước, vắt khô đem lên chảo rang cho tôm vàng mặt, săn lại. Giã phần cháy tôm này thật bông để làm thành ruốc tôm. \nBước 7: Tráng trứng \nĐánh tan 2 quả trứng gà và 1 lòng đỏ trứng gà với 1 thìa cơm rượu trắng, 1 thìa nước lọc.  Để trứng tráng được mỏng, bạn nên cho 1 chút dầu ăn lên chảo sau đó dùng giấy thấm dầu quét nhẹ một lớp mỏng để chảo có thật ít dầu ăn. Sau đó bạn cho 1 thìa trứng vào chảo, láng thật mỏng và rán ở mức lửa nhỏ. Làm lần lượt cho tới khi rán hết trứng. Tiếp đó, xếp các lớp trứng lên nhau, cuộn tròn và thái chỉ thật nhỏ. \n Bước 8: Thái giò lụa và chần bún \nGiò lụa bạn cũng đem thái chỉ thật mỏng và để riêng. Bún rối đem trụng qua với nước sôi. \nBước 9: Hoàn thành \nCho bún ra bát, sau đó xếp các loại nhân: trứng, gà xé, giò lụa thái chỉ, nấm hương thái nhỏ, hành lá, rau răm, mùi tàu. Chan nước dùng nóng 1 lần cho nguyên liệu nóng lên rồi chắt nước ra. Sau đó mới chan lần 2 và thêm ruốc tôm bông lên trên. Khi ăn tuỳ theo khẩu vị bạn có thể bỏ thêm mắm tôm, vắt chanh, ớt kèm.';
  String quanngon = 'Bún thang Cầu Gỗ: 48 Cầu Gỗ, Q.Hoàn Kiếm\n Bún thang Hàng Hòm: số 2 ngõ Hàng Chỉ, Hàng Hòm, Q.Hoàn Kiếm\nBún thang Hàng Hành: 29 Hàng Hành, Hoàn Kiếm';
  String content = 'Bún thang Hà Nội có thể gọi là “đệ nhất cầu kỳ” vì phải dùng đến 20 nguyên liệu để làm nên tô bún thơm ngon. Thành phần chính bao gồm: trứng gà chiên mỏng xắt nhỏ, lườn gà xé, giò lụa xắt mỏng, tôm, mực, rau răm, v.v... tất cả tạo nên tô bún sắc màu đẹp mắt và ngon miệng. Quả xứng đáng là món ăn ngon Hà Nội nổi bật, đúng không nào? ';
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
                 Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,color: kbackgroundColor,)),
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
                              image: AssetImage('assets/bunthang.jpg'
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