import 'package:flutter/material.dart';
import 'package:hnfood/UI/Screen/Widget/Rate/rating_screen.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../comment_screen.dart';

class BunRieuCuaPage extends StatefulWidget {
  const BunRieuCuaPage({super.key, required this.title});

  final String title;

  @override
  State<BunRieuCuaPage> createState() => _BunRieuCuaPageState();
}

class _BunRieuCuaPageState extends State<BunRieuCuaPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Nguyên liệu chính làm nên tô bún riêu cua Hà Nội đặc sắc đó là cua đồng tươi giã nhuyễn, lọc lấy nước đun nhỏ lửa để thịt cua đóng thành khối và nổi trên mặt nước lèo. Cho thêm cà chua đỏ, mắm tôm, hành xanh, đậu chiên vàng, miếng giò ăn kèm rau và bún là đủ vị!';
  String congthuc = 'Nguyên liệu:\nCua đồng 500 gr\nGạch cua 50 gr\nTrứng gà 2 quả\nTôm khô 70 gr\nCà chua 3 trái\nĐậu hũ chiên 2 miếng\nHuyết 100 gr\nHành tím 30 gr\nMắm tôm 2 muỗng canh\nGiấm gạo 3 muỗng canh\nHạt nêm 2 muỗng canh\nDầu điều 1 muỗng cà phê\nDầu ăn 1 muỗng canh\nBún tươi 500 gr\nBắp chuối 100 gr\nRau muống 100 gr\nRau kinh giới 100 gr\nGiá đỗ 100 gr\nHành lá 30 gr\nChả lụa 6 cây\n \nCách làm:\nBước 1:\nCho vào chảo 1 muỗng canh dầu ăn, đợi dầu nóng cho thêm hành tím cắt lát vào phi cho thơm. Sau đó cho gạch cua, 1 muỗng canh mắm tôm vào khuấy đều.\nBước 2:\nKhi gạch cua sôi, múc một nửa ra chén. Phần còn lại để nguyên trong chảo, cho thêm cà chua cắt múi cau, đậu hũ chiên cắt vuông và 1 muỗng cà phê dầu màu điều vào. Xào đều đến khi cà chua vừa chín tới, nước xào ra màu cam đẹp thì nhắc xuống.\nBước 3:\nCua đồng mua về cho vào thau đá lạnh để cua ngừng hoạt động. Tách bỏ mai cua rồi rửa sạch, cho vào máy xay nát. Nếu không muốn mất thời gian bạn cũng có thể mua cua đồng xay sẵn, bán rất nhiều ở chợ hoặc siêu thị. Cho cua xay vào rây, đổ nước lạnh qua rây, lọc lấy thịt cua và bỏ phần vỏ cứng. Với 500gr cua xay bạn dùng 1 lít nước lạnh, cứ đổ nước và gạn từ từ đến khi chỉ còn vỏ cứng trong rây thì bỏ đi. Thêm vào nước cua 2 quả trứng gà đánh tan rồi bật bếp đun ở lửa nhỏ.\nBước 4:\nChờ đến khi nồi nước sôi lên, riêu cua sẽ nổi lên mặt. Lúc bày bạn dùng rây hoặc vá có lỗ vớt riêu lên để ráo nước rồi cho vào chén hoặc dĩa, nhớ nén riêu cua chặt tay để khi cắt ra, riêu cua tạo thành từng miếng nhìn đẹp mắt hơn. Đến đây bạn mới dùng đến phần gạch cua lúc nãy, múc gạch cua ra dàn đều lên miếng riêu, riêu của chúng ta sẽ có màu đẹp hơn.\nBước 5:\nSau khi vớt riêu cua ra, bạn cho tôm khô ngâm mềm vào nấu, có tôm khô nước dùng sẽ ngọt và mùi thơm đặc trưng hơn. Sau đó pha hỗn hợp gồm 3 muỗng canh giấm, 2 muỗng canh hạt nêm và 1 muỗng canh mắm tôm rồi đổ vào nồi nước dùng, khuấy đều. Khi nước dùng sôi thì cho đậu hũ và cà chua xào vào, thêm huyết rồi đợi đến khi nước sôi lại thì nhắc xuống. Lúc này bạn có thể nêm nếm lại tùy theo khẩu vị của gia đình.\nBước 6:\nTrụng bún, để ráo rồi gắp ra tô. Gắp thêm riêu cua, chả lụa cây, vài miếng huyết cùng đậu hũ, chan nước dùng nóng vào, rắc thêm miếng hành lá cắt nhỏ là chúng ta đã có tô bún riêu thơm ngon không kém gì ngoài hàng rồi. Bún riêu cua ăn kèm dĩa rau sống tươi với những loại rau quen thuộc như bắp chuối, rau muống bào, rau kinh giới và giá đỗ thì quả là không còn gì để chê vào những ngày mùa.';
  String quanngon = 'Bún riêu phố Quang Trung: 2F Quang Trung, Hoàn Kiếm\nBún riêu phố Nguyễn Siêu: 32 Nguyễn Siêu, Hoàn Kiếm';
  String content = 'Nguyên liệu chính làm nên tô bún riêu cua Hà Nội đặc sắc đó là cua đồng tươi giã nhuyễn, lọc lấy nước đun nhỏ lửa để thịt cua đóng thành khối và nổi trên mặt nước lèo. Cho thêm cà chua đỏ, mắm tôm, hành xanh, đậu chiên vàng, miếng giò ăn kèm rau và bún là đủ vị!';
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
                              image: AssetImage('assets/bunrielcua.jpg'
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