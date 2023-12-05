import 'package:flutter/material.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

class BunOcPage extends StatefulWidget {
  const BunOcPage({super.key, required this.title});

  final String title;

  @override
  State<BunOcPage> createState() => _BunOcPageState();
}

class _BunOcPageState extends State<BunOcPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Món bún ốc Hà Nội trứ danh được làm từ nguyên liệu đơn giản và dân dã gồm: ốc văn hoặc ốc nhồi, bún, cà chua, rau thơm kèm gia vị là món ăn ngon Hà Nội được lòng du khách gần xa. Màu sắc món ăn bắt mắt, hương vị nước ốc đậm đà được người Hà Nội chọn làm bữa sáng hoặc bữa trưa cho gia đình.';
  String congthuc = 'Nguyên Liệu: \n Ốc vặn 1 kg\n Bún tươi 500 gr\n Giấm 300 ml\n Đường trắng 1 muỗng canh\n Cà chua 4 trái\n Ớt bột 3 muỗng cà phê\n Dầu ăn 1 muỗng canh\n Nước mắm 1 muỗng canh\n Ớt sừng 1 trái\n Hạt nêm 2 muỗng cà phê\n Tía tô 25 gr\n Hành lá 5 gr\n Tỏi băm 1/2 muỗng cà phê\n Hành tím 2 củ\n \n Cách làm:\nBước 1:\nỐc rửa sạch bẩn với nước sạch nhiều lần rồi đem ngâm với nước, cắt vài lát ớt sừng vào chậu nước ngâm để ốc nhả sạch nhớt và cát bẩn. Ngâm ốc khoảng 30 phút rồi sát lại ốc 2-3 lần nữa cho thật sạch.\nBước 2:\nĐổ ốc vào nồi đổ nước ngập xâm xấp mặt, cho thêm chút muối vào. Đặt lên bếp luộc ốc cho đến khi nước ốc sôi, dùng đũa đảo vài lần cho vảy ốc bung ra là ốc chín. Tắt bếp, đổ ốc ra rổ cho ráo, chắt lại nước ốc để riêng. Khi ốc nguội lấy kim khều thịt ốc ra chén.\nBước 3:\nPhi thơm hành tỏi trên chảo với dầu ăn. Cho cà chua vào xào chín với chút nước mắm và gia vị. Sau đó đổ cà chua đã xào vào nồi thêm nước ốc luộc, thêm khoảng 500ml nước lạnh, nêm 1 muỗng canh nước mắm, 1 muỗng canh đường, 2 muỗng cà phê hạt nêm. Đun sôi nước dùng, sau đó cho hết giấm bỗng (bỗng rượu), vừa cho vừa nêm nếm lại nước dùng sao cho vừa vị nhất. Nước dùng bún ốc đảm bảo vị ngọt, chua thanh dịu nhẹ, thơm mùi bỗng rượu, màu đỏ đẹp của cà chua không quá ngậy béo.\nBước 4:\nCà chua rửa sạch, bổ múi cau. Nhặt các loại rau sống, rửa sạch cắt nhỏ. Hành hoa và tía tô rửa sạch cắt nhỏ để ra chén riêng.\nBước 5:\nChưng ớt khô với chút dầu ăn đổ ra bát con. Bún chần qua nước sôi, gắp ra từng bát tô. Múc một thìa canh ốc vào bát, thêm chút hành tía tô thái nhỏ thêm chút mì chính tuỳ khẩu vị. Múc nước dùng ốc còn sôi nóng trên bếp, thêm vài miếng cà chua chan vào bát bún.\nBước 6:\nThưởng thức bún riêu ốc khi còn nóng, thêm chút ớt chưng, nếu ăn được mắm tôm có thêm vào bát bún 1 muỗng nhỏ.';
  String quanngon = 'Bún ốc Giang – 36 Lương Ngọc Quyến, Q. Hoàn Kiếm\nBún ốc sườn – 57 Hai Bà Trưng, Q, Hoàn Kiếm\nBún ốc sườn Cô Sáu – Tầng trệt, 354 Bạch Mai, Q.Hai Bà Trưng';
  String content = 'Món bún ốc Hà Nội trứ danh được làm từ nguyên liệu đơn giản và dân dã gồm: ốc văn hoặc ốc nhồi, bún, cà chua, rau thơm kèm gia vị là món ăn ngon Hà Nội được lòng du khách gần xa. Màu sắc món ăn bắt mắt, hương vị nước ốc đậm đà được người Hà Nội chọn làm bữa sáng hoặc bữa trưa cho gia đình.';
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
                              image: AssetImage('assets/bunocnguoi.jpg'
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
                        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.comment), label: Text('Bình Luận', style: TextStyle(color: kbackgroundAppbar))),
                        Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.star, color: Colors.amber,), label: Text('Đánh giá', style: TextStyle(color: kbackgroundAppbar))),
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