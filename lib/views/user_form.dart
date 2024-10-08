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
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('Cadastrar produto'),

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
                    avatarUrl: _formData['avatarUrl'],
                  ),
                );
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        padding: const EdgeInsets.all(60),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(16),
        ),

        child: Form(
            key: _form,
            child: Column(
                children: <Widget>[
                TextFormField(
                  initialValue: _formData['codigo'],
                  decoration: const InputDecoration(labelText: 'Código'),
                  style:TextStyle(
                   fontSize:40,
                   color: Colors.white,


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
                    fontSize: 40,
                    color: Colors.white
                  ),
                  initialValue: _formData['descricao'],
                  decoration: const InputDecoration(labelText: 'Descrição do produto'),
                  onSaved: (value) => _formData['descricao'] = value!,

                ),

                TextFormField(
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                  ),

                  initialValue: _formData['avatarUrl'],
                  decoration: const InputDecoration(labelText: 'Locação'),
                  onSaved: (value) => _formData['avatarUrl'] = value!,

                ),

              ],
            )),
      ),
    );
  }
}
