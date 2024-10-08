
import 'package:misale/models/user.dart';
import 'package:misale/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserForm extends StatefulWidget {
  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(User user) {
    _formData['id'] = user.id!;
    _formData['codigo'] = user.codigo!;
    _formData['descricao'] = user.descricao!;
    _formData['Quantidade'] = user.quantidade!;
    _formData['avatarUrl'] = user.avatarUrl!;

  }

  @override
  @protected
  @mustCallSuper
  void didChangeDependencies() {
    super.didChangeDependencies();
    final user = ModalRoute.of(context)?.settings.arguments as User?;
    if (user != null) {
      _loadFormData(user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Cadastrar produto'),

        backgroundColor: (Colors.orangeAccent),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            //VALIDAÇÃO CAMPO NOME
            onPressed: () {
              final isValid = _form.currentState!.validate();

              if (isValid) {
                _form.currentState?.save();
                Provider.of<Users>(context, listen: false).put(
                  User(
                    id: _formData['id'],
                    codigo: _formData['codigo'],
                    descricao: _formData['descricao'],
                    quantidade: _formData['quantidade'],
                    avatarUrl: _formData['avatarUrl'],
                  ),
                );
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),

        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _formData['codigo'],
                  decoration: const InputDecoration(
                    labelText: "Codigo",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  //VALIDADOR CAMPO NOME
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Informe um código válido.';
                    }

                    if (value.trim().length < 3) {
                      return 'Informe um código com no mínimo três letras.';
                    }
                    return null;
                  },
                  onSaved: (value) => _formData['codigo'] = value!,
                ),
                TextFormField(
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                  initialValue: _formData['descricao'],
                  decoration: const InputDecoration(
                    labelText: "Descricao",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  onSaved: (value) => _formData['descricao'] = value!,

                ),
                TextFormField(
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                  initialValue: _formData['quantidade'],
                  decoration: const InputDecoration(
                    labelText: "Quantidade",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  onSaved: (value) => _formData['quantidade'] = value!,

                ),

                TextFormField(
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),

                  initialValue: _formData['avatarUrl'],
                  decoration: const InputDecoration(
                    labelText: "AvatarUrl",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  onSaved: (value) => _formData['Locação'] = value!,

                ),

              ],
            )),
      ),
    );
  }
}
