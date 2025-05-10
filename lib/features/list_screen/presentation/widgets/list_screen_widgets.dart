
import 'package:flutter/material.dart';
import 'package:mydemoapp/features/list_screen/data/model/list_screen_model.dart';

class UserCard extends StatelessWidget {
  final Datum user;

  UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(user.avatar!),
          radius: 30,
        ),
        title: Text(
          '${user.firstName} ${user.lastName}',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(user.email!),
      ),
    );
  }
}
