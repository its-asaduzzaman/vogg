import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vogg/data/repository/popular_product_repo.dart';
import 'package:vogg/models/products_model.dart';
import 'package:vogg/utils/colors.dart';
import '../data/repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;

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

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = _quantity + 1;
      if (_quantity > 20) {
        _quantity = 20;
        Get.snackbar(
          "Item Count",
          "You can't add more",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
          duration: const Duration(seconds: 1),
        );
      }
    } else {
      _quantity = _quantity - 1;
      if (_quantity < 0) {
        _quantity = 0;
        Get.snackbar(
          "Item Count",
          "You can't reduce more",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
          duration: const Duration(seconds: 1),
        );
      }
    }
    update();
  }

  void initProduct() {
    _quantity = 0;
  }
}
