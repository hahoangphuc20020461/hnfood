import 'package:flutter/material.dart';
import 'package:hnfood/UI/Screen/Widget/Rate/rating_screen.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../comment_screen.dart';

class BundaumamtomPage extends StatefulWidget {
  const BundaumamtomPage({super.key, required this.title});

  final String title;

  @override
  State<BundaumamtomPage> createState() => _BundaumamtomPageState();
}

class _BundaumamtomPageState extends State<BundaumamtomPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Bún đậu mắm tôm là món ngon Hà Nội “gây sốt” một thời với nguyên liệu hết sức dân dã. Một ít bún, vài miếng đậu, ăn kèm mắm tôm, rau kinh giới, tía tô, mùi tàu bạn sẽ cảm nhận được vị béo của đậu, mặn ngọt của mắm tôm. Những ai ăn lần đầu sẽ cảm giác hơi “dội” với vị nồng, nhưng dần dà sẽ bị nghiện đó nhé!';
  String congthuc = 'Nguyên Liệu: \n 500g bún sợi nhỏ\n2 miếng đậu hũ\n400 g thịt chân giò\nMắm tôm\nRau kinh giới, dưa leo, tía tô và các loại rau gia vị, tắc, tỏi\nGia vị: đường, dầu ăn, hạt nêm\n Cách làm:\nBước 1: Luộc thịt\nThịt chân giò mua về rửa sạch. Luộc sơ qua nước sôi khoảng 2 phút, vớt ra, rửa lại thật sạch với nước lạnh. Cho lên bếp một nồi nước khác, luộc thịt đến khi chín mềm là được. Cắt miếng nhỏ vừa ăn.\nBước 2: Chiên đậu hũ\nCắt miếng vừa ăn, chiên vàng đều 2 mặt, vừa thơm vừa giòn là được.\nBước 3: Ép bún\nCách làm bún lá rất đơn giản. Để ép bún, bún tươi sau khi mua về bạn rửa sạch, trần sơ, sau đó lót lá chuối hoặc dùng giấy bọc thực phẩm dưới cái nia. Cho phần bún đã chuẩn bị lên trên phủ thêm một phần lá chuối hoặc giấy bọc thực phẩm lên mặt tiếp đến dùng một tấm thớt tròn, đè mạnh lên ép bún trong khoảng 2 tiếng, bún sẽ chắc nịch. Ép bún trong khuôn, sau đó cắt thành miếng nhỏ cho vừa ăn.\nBước 4: Rửa rau\nNgâm nước muối, rửa sạch, sắp lên dĩa cho đẹp mắt.\nBước 5: Pha mắm tôm\nMắm tôm là loại mắm có mùi rất đậm và mặn, rất nồng được ủ từ tôm và muối lên men theo cách làm truyền thống, thường được ăn kèm món bún đậu nổi tiếng của Hà Nội. Khi được pha chế lại như một nước chấm thì nó giúp phát huy hết mùi vị thơm ngon nhất của các món chính đi kèm. Hay nói cách khác, ăn bún đậu nhất định phải kèm theo mắm tôm thì món ăn mới thực sự thơm ngon và tròn vị.Mắm tôm mua về, đun sôi, sau đó nêm thêm đường cho vừa ăn. Khi mắm tôm nguội bạn có thể thêm tắc vào, sẽ thơm ngon hơn nhé.';
  String quanngon = 'Bún đậu mắm tôm Ngõ Trạm: 1B Ngõ Trạm, Q.Hoàn Kiếm\nBún đậu Trung Hương: 49 ngõ Phất Lộc, Hàng Bạc\nBún đậu Cây Bàng – Đại La: 129 Đại La, Q.Hai Bà Trưng';
  String content = 'Bún đậu mắm tôm là món ngon Hà Nội “gây sốt” một thời với nguyên liệu hết sức dân dã. Một ít bún, vài miếng đậu, ăn kèm mắm tôm, rau kinh giới, tía tô, mùi tàu bạn sẽ cảm nhận được vị béo của đậu, mặn ngọt của mắm tôm. Những ai ăn lần đầu sẽ cảm giác hơi “dội” với vị nồng, nhưng dần dà sẽ bị nghiện đó nhé!';
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
                              image: AssetImage('assets/bundaumamtom.jpg'
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