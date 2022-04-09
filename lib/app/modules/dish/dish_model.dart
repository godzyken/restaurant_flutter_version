class Dish {
  String? error;

  Dish({this.error});

  Dish.fromJson(Map<String, dynamic> json) {
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['error'] = error;
    return data;
  }
}
