import 'package:get/get.dart';
import 'package:vogg/data/api/api_client.dart';
import 'package:vogg/utils/app_constants.dart';

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.PUPULAR_PRODUCT_URI);
  }
}
