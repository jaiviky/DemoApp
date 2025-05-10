import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mydemoapp/features/list_screen/data/model/list_screen_model.dart';
import 'package:mydemoapp/features/list_screen/logic/list_screen_view_model.dart';
import 'package:mydemoapp/features/list_screen/presentation/widgets/list_screen_widgets.dart';

class ListScreen extends StatelessWidget {
  ListScreenViewModel listScreenViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Obx(
        () =>
            listScreenViewModel.listScreenValue.value.data == null
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                  itemCount:
                      listScreenViewModel.listScreenValue.value.data!.length,
                  itemBuilder: (context, index) {
                    Datum user =
                        listScreenViewModel.listScreenValue.value.data![index];
                    return UserCard(user: user);
                  },
                ),
      ),
    );
  }
}
