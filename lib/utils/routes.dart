import 'package:get/get.dart';
import 'package:mydemoapp/features/home_screen/presentation/screens/home_screen.dart';
import 'package:mydemoapp/features/list_screen/logic/list_screen_view_model.dart';
import 'package:mydemoapp/features/list_screen/presentation/screens/list_screen.dart';
import 'package:mydemoapp/utils/routes_const.dart';

class Routes {
  static final routes = [
    GetPage(name: RouteList.initial, page: () => HomeScreen()),
    GetPage(
      name: RouteList.list,
      page: () => ListScreen(),
      binding: BindingsBuilder(() => Get.lazyPut(() => ListScreenViewModel())),
    ),
  ];
}
