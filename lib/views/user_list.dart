import 'package:crud/components/user_tile.dart';
import 'package:crud/data/dummy_users.rt';
import 'package:flutter/material.dart';

class UserList extends StateLessWidget {
  const UserList({super.key});

  @override
  Widget build(BuilContext context){
    Map user ={...DUMMY_USERS};
    return Scaffold(
      appBar:AppBar(
        title:const Text('Lista de Usuários'),
        actions: <widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          ItemCount: users.length,
          itemBuilder:(ctx, i) => UserTile(users.values.elementAt(i))));
  }
}