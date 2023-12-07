import 'package:flutter/material.dart';
import 'package:hnfood/UI/Screen/Widget/Rate/rating_screen.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../comment_screen.dart';

class BanhtomPage extends StatefulWidget {
  const BanhtomPage({super.key, required this.title});

  final String title;

  @override
  State<BanhtomPage> createState() => _BanhtomPageState();
}

class _BanhtomPageState extends State<BanhtomPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Du lịch Hà Nội mà chưa thưởng thức đặc sản lòng rán thì quả thật là thiệt thòi lớn đối với thực thần chân chính. Miếng lòng sạch được rán chín cháy cạnh, ngoài giòn trong mềm, ăn cùng với rau thơm, bún tươi, chấm thêm mắm tôm chua cay thì phải nói là “bùng nổ hương vị”.  có thể thử lòng xài, lòng hấp, gỏi lòng…; đều là “cực phẩm” đấy!';
  String congthuc = 'Nguyên Liệu: \n Tôm 500 gr\nBột mì 200 gr\nBột năng 100 gr\nKhoai lang 300 gr\nSu hào 100 gr\nCà rốt 100 gr\nTrứng 2 quả\nXà lách 200 gr\nTỏi 3 tép\nỚt 2 trái\nGiấm ăn 4 muỗng canh\nNước mắm 2 muỗng canh\nDầu ăn 4 muỗng canh\nGia vị thông dụng 1 ít\n Cách làm:\nBước 1: Sơ chế tôm\nĐể loại bớt mùi tanh của tôm, bạn ngâm tôm với nước muối loãng khoảng 10 phút sau đó cắt bỏ đầu, lột bỏ vỏ chừa lại phần vỏ đuôi tôm, rút bỏ chỉ tôm rồi rửa lại với nước nhiều lần, để ráo.\nBước 2: Sơ chế các nguyên liệu khác\nKhoai lang gọt vỏ, cắt lát, thái sợi nhỏ rồi cho khoai vào thau nước muối loãng ngâm khoảng 10 phút. Sau đó rửa sạch lại với nước rồi vớt ra rổ để ráo.Cà rốt, gọt vỏ, tỉa hoa, thái lát mỏng. Su hào, gọt vỏ, thái lát rồi cắt lát hình vuông hoặc hình chữ nhật vừa ăn.Cho cà rốt, su hào vào 1 cái chén ngâm với 2 muỗng canh giấm khoảng 15 phút rồi vớt ra để ráo. Tỏi bóc vỏ, băm nhuyễn. Ớt rửa sạch, thái nhỏ.Rau xà lách, bỏ gốc, lá hư, rửa sạch, ngâm với nước muối loãng khoảng 15 phút, vớt ra rửa lại với nước sạch rồi để ráo.\nBước 3: Trộn bột chiên\nCho 200gr bột mì, 100gr bột năng vào 1 cái âu sau đó cho từ từ 150ml nước vào trộn đều đển khi bột được hòa quyện,Tiếp đến, bạn đập 2 cái trứng gà cho vào âu bột, trộn đều, rồi để bột nghỉ 30 phút.\nBước 4: Ướp tôm\nƯớp tôm với 1 muỗng canh hạt nêm, 1 thìa muỗng cà phê muối, 1 muỗng cà phê đường, 1/2 muỗng cà phê hạt tiêu, trộn đều và ướp khoảng 15 phút.\nBước 5: Lăn bột và chiên bánh\nCho tôm và khoai lang cắt sợi vào hỗn hợp bột rồi trộn đều.Bắc chảo lên bếp mở lửa lớn, thêm 4 muỗng canh dầu ăn, đợi dầu nóng, bạn múc 1 vá hỗn hợp bột, khoai và tôm vào chảo.Chỉnh cho con tôm nằm ở giữa rồi chiên khoảng 4 - 5 phút cho đến khi vàng giòn cả 2 mặt. Sau đó vớt bánh ra để lên giấy thấm dầu cho ráo dầu.\nBước 6: Pha nước mắmCho vào tô 50ml nước lọc, sau đó cho thêm 2 muỗng canh đường, 1 muỗng cà phê bột ngọt, 1/2 muỗng cà phê tiêu khuấy đều để gia vị tan, rồi cho tiếp 2 muỗng canh giấm ăn, 2 muỗng canh nước mắm, 1 muỗng canh tỏi băm, 1/2 muỗng cà phê ớt băm vào và khuấy đều.Bạn nêm nếm lại cho vừa khẩu vị rồi múc nước chấm ra chén, cho thêm cà rốt, su hào vào là bạn đã có 1 chén nước chấm chua ngọt rồi.';
  String quanngon = 'Bánh tôm Hàng Bồ: 55 Hàng Bồ, Hoàn Kiếm\nBánh tôm Hồ Tây: số 1 Thanh Niên, Tây Hồ\nBánh tôm Cô Ầm: ngõ Đồng Xuân, Hàng Chiếu, Hoàn Kiếm';
  String content = 'Du lịch Hà Nội mà chưa thưởng thức đặc sản lòng rán thì quả thật là thiệt thòi lớn đối với thực thần chân chính. Miếng lòng sạch được rán chín cháy cạnh, ngoài giòn trong mềm, ăn cùng với rau thơm, bún tươi, chấm thêm mắm tôm chua cay thì phải nói là “bùng nổ hương vị”.  có thể thử lòng xài, lòng hấp, gỏi lòng…; đều là “cực phẩm” đấy!';
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
                              image: AssetImage('assets/banhtom.jpg'
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