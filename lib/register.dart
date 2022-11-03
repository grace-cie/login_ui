import 'package:flutter/material.dart';
import 'main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter a Name';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter User Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter a User Name';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Enter a Password';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please Cofirm Password';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
