import 'package:get/get.dart';
import 'package:mydemoapp/features/list_screen/data/model/list_screen_model.dart';
import 'package:mydemoapp/features/list_screen/data/repository/list_creen_repository.dart';
import 'package:mydemoapp/features/list_screen/data/repository/list_creen_repository.dart_implementation.dart';

class ListScreenViewModel extends GetxController {
  ListScreenRepository listScreenRepository = ListScreenImplementation();
  Rx<ListScreenModel> listScreenValue = ListScreenModel().obs;

  @override
  void onInit() {
    super.onInit();
    getList();
  }

  Future getList() async {
    final data = await listScreenRepository.getListData();
    if (data != null) {
      listScreenValue.value = listScreenModelFromJson(data);
    }
  }
}
