import 'dart:math';
import 'package:misale/data/dummy_users.dart';
import 'package:misale/models/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  Set<User> get all {
    return {..._items.values};
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    // if (user.id == null) {
    //   return;
    // }

    if (user.id != null &&
        user.id!.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
          user.id!,
              (_) => User(
            id: user.id,
            codigo: user.codigo,
            descricao: user.descricao,
            quantidade: user.quantidade,
            avatarUrl: user.avatarUrl,
          ));
    } else {
      //CRIAR
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
              () => User(
            id: id,
            codigo: user.codigo,
            descricao: user.descricao,
            quantidade: user.quantidade,
            avatarUrl: user.avatarUrl,
          ));
    }

    notifyListeners();
  }

  //DELETAR
  void remove(User user) {
    if (user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}
