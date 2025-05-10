import 'package:mydemoapp/features/list_screen/data/repository/list_creen_repository.dart';
import 'package:http/http.dart' as http;

class ListScreenImplementation extends ListScreenRepository {
  @override
  Future getListData() async {
    try {
      final response = await http.get(
        Uri.parse('https://reqres.in/api/users?page=2'),
      );
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
