import 'package:flutter/material.dart';
import 'package:hnfood/UI/Screen/Widget/Rate/rating_screen.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

import '../comment_screen.dart';

class BanhmiPage extends StatefulWidget {
  const BanhmiPage({super.key, required this.title});

  final String title;

  @override
  State<BanhmiPage> createState() => _BanhmiPageState();
}

class _BanhmiPageState extends State<BanhmiPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Thời tiết lành lạnh tại Hà Nội là lúc tuyệt nhất để bạn thưởng thức món bánh mì sốt vang. Bánh mì nướng vàng giòn chấm cùng sốt vang đậm đà cùng thịt bò mềm. Món ăn sáng nhẹ nhàng, vừa đủ no để bạn bắt đầu một ngày mới là đây chứ đâu. ';
  String congthuc = 'Nguyên Liệu: \n 500gr thịt bò\n2 củ cà rốt\n1 củ hành tây \n5 trái cà chua\n2 củ khoai tây \n5gr ngò rí\n1 củ tỏi\n150ml rượu vang\nGia vị cần thiết: hạt nêm, đường, muối, tiêu, bột năng, bột quế...\n \nCách làm:\nBước 1:\nĐầu tiên của cách làm bánh mì sốt vang, chúng mình cần sơ chế các nguyên liệu trước nha.Đối với bò, các bạn chọn những phần bò tươi, đỏ tươi, không hôi, có độ đàn hồi. Khi mua về, các bạn rửa sơ với 1 lần nước, sau đó chà lên 1 muối để rồi rửa lại với nước 3 phút thì xong. Một cách khác, các bạn có thể cho bò vào nồi luộc sơ với nước, vài lát gừng tầm 2-4 phút thì mùi hôi của bò sẽ giảm đi đáng kể luôn nè. Sau đó các bạn cắt bò ra thành những khúc sao cho vừa miệng ăn nha, tránh cắt thịt quá vụn vì khi nấu thịt sẽ bị rút nhỏ lại đó.\nBước 2:\nVì món bánh mì sốt vang này có khá nhiều thành phần phụ từ rau củ quả: hành tây, cà rốt, khoai tây, cà chua, ngò rí... Các bạn chỉ cần rửa sạch rồi cắt nhỏ là được.\nTrừ cà chua khi rửa xong, các bạn ngâm cà chua trong thau nước đá lạnh để dễ lột vỏ cà hơn, sau đó đem cà đi xay để lấy sốt, hoặc đâm nhỏ đều được.\nTỏi các bạn sử dụng tỏi băm nha, cà rốt và khoai tây khi rửa xong các bạn đem ngâm với nước đá lạnh 5 phút rồi vớt ra nhé.\nBước 3:Cho thịt bò các bạn mới rửa sạch vào 1 tô lớn, rồi ướp thịt với 1 muỗng rượu vang, 1 muỗng bột quế, 1 muỗng hạt nêm, 1 ít tỏi rồi dùng muỗng trộn đều thịt lên, các bạn cũng có thể sử dụng bao tay nilon để trộn thịt dễ thấm hơn nha. Đậy kín phần thịt ướp lại rồi để nguyên ướp thịt trong khoảng 15-20 phút là xong.\nBước 4:\nSau khi thịt đã ướp hoàn tất, các bạn sẽ xào sơ thịt với 1 chảo nhỏ và 1 ít dầu và tỏi, xào cho đến khi thịt ngả nâu thì tắt bếp nha. Các bạn nên thao tác bước này nhanh 1 chút để thịt không bị quá lửa dẫn đến dai và khét nha.\nBước 5: \nDùng 1 nồi lớn, cho tỏi và dầu vào phi thơm vàng. Tiếp theo các bạn cho cà chua đã xay mịn vào xào nhẹ, cho thêm 100ml rượu vang và nấu ở lửa nhỏ, khi sốt sôi lên các bạn cho thêm 1 ít muối là được. Kế tiếp, các bạn mới cho thêm thịt đã xào chín, đổ vào 1 lít nước để hầm bò cho thật mềm, các bạn để lửa trung bình nhỏ để bò đạt chất lượng tốt nhất nha. Tầm 20 phút sau các bạn cho thêm khoai tây, cà rốt, nêm thêm 1 ít hạt nêm, muối và đừng quên bỏ thêm 2 muỗng đường cho đậm đà nhé. Tiếp tục hầm trong vòng 20 phút đồng hồ nữa. Cuối cùng là cho hành tây và nêm nếm gia vị lại thêm 1 lần nữa là được. Để làm cho sốt hấp dẫn hơn các bạn pha 2 muỗng bột năng với 2 muỗng nước rồi đổ vào nồi nước sốt vang khuấy đều cho đến khi hỗn hợp sệt nhẹ là được.';
  String quanngon = 'Beefsteak Sauce Bread Shop: ngõ 35 Thái Thịnh, ngã Tư Sở, Đống Đa\nTiệm số 252 Hàng Bông, Cửa Nam, Hoàn Kiếm\nTrâm – Bánh mì sốt vang Đình Ngang: 30 Đình Ngang, quận Hoàn Kiếm';
  String content = 'Thời tiết lành lạnh tại Hà Nội là lúc tuyệt nhất để bạn thưởng thức món bánh mì sốt vang. Bánh mì nướng vàng giòn chấm cùng sốt vang đậm đà cùng thịt bò mềm. Món ăn sáng nhẹ nhàng, vừa đủ no để bạn bắt đầu một ngày mới là đây chứ đâu. ';
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
                              image: AssetImage('assets/banhmihanoi.jpg'
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