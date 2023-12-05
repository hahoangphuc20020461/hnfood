// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DataFoodTour {
  String? img;
  String? name;
  int? sao;

  DataFoodTour({
    this.img,
    this.name,
    this.sao,
  });

  
}
const List dataft = [
  {
    "img": "assets/vitcovandinh.jpg",
    "name": "Vịt cỏ Vân Đình",
    "sao": 3,
  },
  {
    "img": "assets/photai.jpg",
    "name": "Phở Bò Tái",
    "sao": 5,
  },
  {
    "img": "assets/bosotvang.jpg",
    "name": "Phở Bò Sốt Vang",
    "sao": 4,
  }
];