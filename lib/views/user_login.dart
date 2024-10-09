

import 'package:flutter/material.dart';
import 'package:misale/views/user_list.dart';

class UserLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black, body: Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 100),
           child: ListView(
              children: <Widget>[
              SizedBox(
            width: 140,
            height: 160,

                child: Image.network('assets/imagens/login.png'),
               ),

               SizedBox(
                  height: 100,
             ),

              TextFormField(
            autofocus: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Nome",
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),

            ),
            style: TextStyle(fontSize: 40),

          ),

             SizedBox(
            height: 50,
          ),

             TextFormField(
            // autofocus: true,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
            style: TextStyle(fontSize: 40),
          ),

             SizedBox(
            height: 100,
          ),

             Container(
              height: 60,
              width: 220,
               alignment: Alignment.centerLeft,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 1],
                colors: [
                  Color(0xFFF58524),
                  Color(0XFFF92B7F),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
                child: SizedBox.expand(
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Container(
                      child: SizedBox(
                        height: 28,
                        width: 28,
                      ),

                    )
                  ],
                ),
                    onPressed: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserList(),
                    ),
                  );
                },
              ),
            ),
          ),
              SizedBox(
            height: 10,
          ),

        ],

      ),
    )
    );
  }
}
