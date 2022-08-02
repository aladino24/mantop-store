import 'package:get/get.dart';
import 'package:mantap_store/data/api/api_client.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({ required this.apiClient });

  Future<Response> getPopularProductList() async{
    return await apiClient.getData('endpoint url');
  }
}