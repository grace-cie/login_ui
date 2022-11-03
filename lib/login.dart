import 'package:flutter/material.dart';
import 'main.dart';
import 'register.dart';

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10.6),
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.account_circle_sharp),
              border: OutlineInputBorder(),
              labelText: 'Enter Username',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field cannot be Empty';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            textInputAction: TextInputAction.continueAction,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(),
              labelText: 'Enter Password',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field cannot be Empty';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data...')),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data...')),
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                }
              },
              child: const Text('Register'),
            ),
          ),
        ],
      ),
    );
  }
}
