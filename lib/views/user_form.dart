import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:misale/flutter/material.dart';

class UserForm extends StateLessWidget {
  final _form = GlobalKey<FormState>(); //qual Global Key e FormState
    @override //objeto ?
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Formulario de usuario'),
          actions: <Widget>[
            IconButton(
            icon: const Icon((Icons.save),
              onPressed: (){
              final isValid = _form.currentState!.validate();

              if (isValid)
                _form.currentState?.save();
              Navigator.of(context).pop();
              }
              },
              )
            ],
        ),
    }
}