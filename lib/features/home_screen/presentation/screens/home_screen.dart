import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mydemoapp/features/home_screen/widgets/home_screen_widgets.dart';
import 'package:mydemoapp/utils/routes_const.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Demo App'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 250,
              width: 250,
              child: buildFeatureCard(
                icon: Icons.next_plan,
                title: 'Go to List Screen',
                onPress: () {
                  Get.toNamed(RouteList.list);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
