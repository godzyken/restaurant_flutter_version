import 'package:get/get.dart';

import '../promotion_model.dart';

class PromotionProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Promotion.fromJson(map);
      if (map is List)
        return map.map((item) => Promotion.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Promotion?> getPromotion(int id) async {
    final response = await get('promotion/$id');
    return response.body;
  }

  Future<Response<Promotion>> postPromotion(Promotion promotion) async =>
      await post('promotion', promotion);

  Future<Response> deletePromotion(int id) async =>
      await delete('promotion/$id');
}
