import 'package:get/get.dart';

import 'package:restaurant_flutter_version/app/modules/auth/bindings/auth_binding.dart';
import 'package:restaurant_flutter_version/app/modules/auth/views/auth_view.dart';
import 'package:restaurant_flutter_version/app/modules/dish/bindings/dish_binding.dart';
import 'package:restaurant_flutter_version/app/modules/dish/views/dish_view.dart';
import 'package:restaurant_flutter_version/app/modules/dishes/bindings/dishes_binding.dart';
import 'package:restaurant_flutter_version/app/modules/dishes/views/dishes_view.dart';
import 'package:restaurant_flutter_version/app/modules/feedback/bindings/feedback_binding.dart';
import 'package:restaurant_flutter_version/app/modules/feedback/views/feedback_view.dart';
import 'package:restaurant_flutter_version/app/modules/home/bindings/home_binding.dart';
import 'package:restaurant_flutter_version/app/modules/home/views/home_view.dart';
import 'package:restaurant_flutter_version/app/modules/leader/bindings/leader_binding.dart';
import 'package:restaurant_flutter_version/app/modules/leader/views/leader_view.dart';
import 'package:restaurant_flutter_version/app/modules/leaders/bindings/leaders_binding.dart';
import 'package:restaurant_flutter_version/app/modules/leaders/views/leaders_view.dart';
import 'package:restaurant_flutter_version/app/modules/login/bindings/login_binding.dart';
import 'package:restaurant_flutter_version/app/modules/login/views/login_view.dart';
import 'package:restaurant_flutter_version/app/modules/menu/bindings/menu_binding.dart';
import 'package:restaurant_flutter_version/app/modules/menu/views/menu_view.dart';
import 'package:restaurant_flutter_version/app/modules/promotion/bindings/promotion_binding.dart';
import 'package:restaurant_flutter_version/app/modules/promotion/views/promotion_view.dart';
import 'package:restaurant_flutter_version/app/modules/promotions/bindings/promotions_binding.dart';
import 'package:restaurant_flutter_version/app/modules/promotions/views/promotions_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.DISHES,
      page: () => DishesView(),
      binding: DishesBinding(),
    ),
    GetPage(
      name: _Paths.DISH,
      page: () => DishView(),
      binding: DishBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: _Paths.LEADERS,
      page: () => LeadersView(),
      binding: LeadersBinding(),
    ),
    GetPage(
      name: _Paths.LEADER,
      page: () => LeaderView(),
      binding: LeaderBinding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK,
      page: () => FeedbackView(),
      binding: FeedbackBinding(),
    ),
    GetPage(
      name: _Paths.PROMOTIONS,
      page: () => PromotionsView(),
      binding: PromotionsBinding(),
    ),
    GetPage(
      name: _Paths.PROMOTION,
      page: () => PromotionView(),
      binding: PromotionBinding(),
    ),
  ];
}
