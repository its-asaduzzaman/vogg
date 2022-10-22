import 'package:get/get.dart';
import 'package:vogg/data/repository/popular_product_repo.dart';
import 'package:vogg/models/products_model.dart';
import '../data/repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("samrat");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      // print(popularProductList.length);
      _isLoaded = true;
      update();
    } else {}
  }
}
