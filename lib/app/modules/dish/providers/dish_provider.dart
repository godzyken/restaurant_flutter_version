import 'package:get/get.dart';

import '../dish_model.dart';

class DishProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Dish.fromJson(map);
      if (map is List) return map.map((item) => Dish.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Dish?> getDish(int id) async {
    final response = await get('dish/$id');
    return response.body;
  }

  Future<Response<Dish>> postDish(Dish dish) async => await post('dish', dish);

  Future<Response> deleteDish(int id) async => await delete('dish/$id');
}
