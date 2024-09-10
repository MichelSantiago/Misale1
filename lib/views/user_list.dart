import 'package:flutter/material.dart';
import 'package:teste/data/dummy_users.dart';

class UserList extends StateLessWidget {

  @override
  Widget build(BuilContext context){
    Map user ={...DUMMY_USERS};
    return Scaffold(
      appBar:AppBar(
        title:const Text('Lista de Usuários'),
      ),
      body: ListView.builder(
          ItemCount: users.length,
          itemBuilder:(ctx, i) => Text(users.values.elementAt(i).name)),
    );
  }
}