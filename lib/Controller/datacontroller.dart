import 'package:get/get.dart';
import 'package:hnfood/Model/datafoodtour.dart';

class DataController extends GetxController {
  List<DataFoodTour> get dataFoodTour => _dataFoodTour;
  List<DataFoodTour> _dataFoodTour = dataft.map((dataFoodTour) => DataFoodTour(img: dataFoodTour['img'],
  name: dataFoodTour['name'],
  sao: dataFoodTour['sao']
  )).toList();
}