import 'package:misale/provider/users.dart';
import 'package:misale/routes/app_routes.dart';
import 'package:misale/views/user_form.dart';
import 'package:misale/views/user_list.dart';
import 'package:misale/views/user_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Misale Ferramentas',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        routes: {
          AppRoutes.home: (_) => UserLogin(),
          AppRoutes.user_form: (_) => UserForm(),
          AppRoutes.user_list: (_) => UserList(),
        },
      ),
    );
  }
}
