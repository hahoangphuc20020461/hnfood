import 'package:flutter/material.dart';
import 'package:scrollable_text_indicator/scrollable_text_indicator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HPRatingTourPage extends StatefulWidget {
  const HPRatingTourPage({super.key, required this.title});

  final String title;

  @override
  State<HPRatingTourPage> createState() => _HPRatingTourPageState();
}

class _HPRatingTourPageState extends State<HPRatingTourPage> {
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
                  height: MediaQuery.of(context).size.height/3.5,
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
                    Center(
                      child: Container(
                        width: 165,
                        height: 83,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/hpfoodtour.png'
                            ),
                            )
                        ),
                        margin: EdgeInsets.only(top: 90),
                        // child: Center(
                        //   child: Image.asset('assets/logofood.png',
                        //   width: 271,
                        //   height: 148,
                        //   ),
                        // ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    Text('HP FoodTour',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'flutterfonts'
                    ),),
                    Padding(padding: EdgeInsets.all(20)),
                    Text('đánh giá',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'flutterfonts',
                      fontSize: 20
                    ),),
                    Padding(padding: EdgeInsets.all(8)),
                    RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Cảm ơn bạn đã đánh giá $rating sao cho Food Tour này'),
                        backgroundColor: kbackgroundAppbar,
                        )
                      );
                      print(rating);
                    },
                  )
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