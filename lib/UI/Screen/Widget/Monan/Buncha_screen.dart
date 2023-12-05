import 'package:flutter/material.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';

class BunChaPage extends StatefulWidget {
  const BunChaPage({super.key, required this.title});

  final String title;

  @override
  State<BunChaPage> createState() => _BunChaPageState();
}

class _BunChaPageState extends State<BunChaPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  String thongtin = 'Thoạt nhìn, bạn có thể nghĩ ngay đến món bún thịt nướng trong Nam, nhưng không nhé, hương vị nước chấm của bún chả Hà Nội hoàn toàn khác biệt. Một phần bún chả gồm: bún, nước chấm vị chua ngọt có kèm su hào và cà rốt ngâm giấm, thêm vài miếng chả thịt nướng thơm phức dậy mùi than lửa và hạt tiêu. Khi ăn, dùng kèm rau sống, mỗi thứ một chút hòa quyện cùng nhau tạo nên vị đậm đà, ngon khó cưỡng.';
  String congthuc = 'Nguyên liệu:\n Thịt ba chỉ 500 gr\nThịt nạc vai 500 gr\nSả 5 cây\nHành tím 4 củ\nChanh 1 trái\nCà rốt 1 củ\nRau 100 gr\nHạt nêm 4 muỗng cà phê\nĐường trắng 2 muỗng canh\nBột ngọt 3 muỗng cà phê\nNước màu 1 muỗng canh\nNước mắm 3 muỗng canh\nGiấm 1 muỗng cà phê\nỚt 2 trái\n \nCách làm:\nBước 1:\nThịt mua về bạn rửa sạch với muối, sau đó thái thịt ba chỉ thành những miếng mỏng to bản. Còn phần thịt nạc vai thì đem xay hoặc băm nhuyễn.\nBước 2:\nSả lột bớt lớp vỏ cứng bên ngoài, thái khoanh. Xay nhuyễn sả. Sau đó vắt sả để lấy nước. Xay nhuyễn hành khô và tỏi.\nBước 3:\nƯớp thịt theo tỷ lệ: 1 kg thịt : 3 thìa cà phê hạt nêm : 3 thìa đường : 3 thìa bột ngọt. Thêm vào 1 thìa canh nước hàng (nước màu), 1 thìa canh nước mắm. Phần gia vị ở trên bạn chia làm 2 phần, hành tỏi xay nhuyễn và nước sả. Một phần bạn ướp với thịt xay nhuyễn. Phần còn lai ướp với thịt cắt miếng. Nếu có thời gian thì nên ướp gia vị trước một đêm, để trong tủ lạnh thì thịt sẽ thấm rất ngon.\nBước 4:\nBào vỏ cà rốt và đu đủ rồi cho vào ngâm với nước muối đã pha loãng. Tiếp đó, cắt đu đủ và cà rốt thành những miếng mỏng. Tiếp theo bạn cho 1/2 muỗng canh đường, 1 muỗng cà phê giấm, 1 muỗng cà phê hạt nêm, chanh, ớt vào trộn đều với đu đủ cà rốt, nếm có vị chua ngọt vừa miệng.\nBước 5:\nLần lượt xếp thịt đã ướp gia vị lên vỉ nướng. Viên thịt băm thành những viên nhỏ vừa ăn. Các bạn có thể nướng bằng lò hoặc bằng than, nhưng ngon nhất vẫn là nướng trên bếp than hoa. Trong quá trình nướng nhớ phết dầu ăn lên mặt thịt để thịt không bị khô.\nBước 6:\nCho nước chấm đã pha vào nồi đun ấm. Rửa sạch các loại rau sống. Dọn bún, rau ra dĩa, cho chả, dưa đu đủ cà rốt vào nước chấm và thưởng thức.';
  String quanngon = 'Bún chả Cửa Đông: 41 Cửa Đông, Q.Hoàn Kiếm\nBún chả Đắc Kim: 1 Hàng Mành, Q.Hoàn Kiếm\nBún chả Sinh Từ: 57 Nguyễn Khuyến, Q.Đống Đa';
  String content = 'Thoạt nhìn, bạn có thể nghĩ ngay đến món bún thịt nướng trong Nam, nhưng không nhé, hương vị nước chấm của bún chả Hà Nội hoàn toàn khác biệt. Một phần bún chả gồm: bún, nước chấm vị chua ngọt có kèm su hào và cà rốt ngâm giấm, thêm vài miếng chả thịt nướng thơm phức dậy mùi than lửa và hạt tiêu. Khi ăn, dùng kèm rau sống, mỗi thứ một chút hòa quyện cùng nhau tạo nên vị đậm đà, ngon khó cưỡng.';
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
                              image: AssetImage('assets/buncha.jpg'
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