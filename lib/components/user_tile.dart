import 'package:misale/models/user.dart';
import 'package:misale/provider/users.dart';
import 'package:misale/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl!.isEmpty
        ? const CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl!),
          );
    return ListTile(
        leading: avatar,
        title: Text(user.name!),
        subtitle: Text(user.email!),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.orange,
                  onPressed: () {
                   Navigater.of(context.pushNamed(
                      AppRoutes.user_form,
                      arguments: user,
                   );
                   },
                 ),
             IconButton
              icon: const Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                     showDialog(
                     context: context,
                     builder: (ctx) => AlerDialog(
                          title: const Text('Excluir Usuario'),
                          content: const Text('Tem Certeza?'),
                          actions: <Widget>
                            TextButton(
                              onPressed: () {
                               Navigator.of(context).pop();
                              },
                              child: const Text('Não')),
                            TextButton(
                              onPressed: () {
                              Provider.of<Users>(context, listem: false).remove(user);
                              Navigator.of(context).pop();
                             },
                            child: const Text('Sim')),
                         ],
                      ));
                   },
                 )
               ],
             ),
           ));
    }
}

