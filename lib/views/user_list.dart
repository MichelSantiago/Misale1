
import 'package:misale/components/user_tile.dart';
import 'package:misale/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:misale/provider/users.dart';

class UserList extends StatelessWidget {

  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
           title: const Text('Lista de produtos'),
          backgroundColor: Colors.orangeAccent,
          iconTheme: IconThemeData(color: Colors.black),

           actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.user_form);
                },
                icon: const Icon(Icons.add,
                color: Colors.black,)),

          ],
        ),

        body: Card(
          color: Colors.black87,
          margin: EdgeInsets.all(8),

          child: ListView.builder(
           itemCount: users.count,
           itemBuilder: (ctx, i) => UserTile(users.byIndex(i))

        ),


        ));
  }
}
