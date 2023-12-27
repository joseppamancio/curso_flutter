import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/components/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(182, 92, 255, 0.89),
                  Color.fromRGBO(252, 99, 244, 0.475),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                  // cascade operator
                  transform: Matrix4.rotationZ(-8 * pi / 180)..translate(-10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurple,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 8,
                          color: Colors.black26,
                          offset: Offset(0, 2),
                        ),
                      ]),
                  child: Text(
                    'Minha Loja',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'Anton',
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
                const AuthForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// //Exemplo cascade operator
// void main() {
//   List<int> a = [1, 2, 3];
//   a.add(4);
//   a.add(5);
//   a.add(6);

//   //cascade operator retorna a própria lista
//   a..add(7)..add(8)..add(9);
// }
