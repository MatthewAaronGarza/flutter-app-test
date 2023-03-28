import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class MyForm extends StatelessWidget {
  const MyForm({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Implement registration logic here
          },
          child: const Text('Register'),
        ),
      ],
    );
  }
}
