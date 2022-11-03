import 'package:flutter/material.dart';
import 'main.dart';


class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome User'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },  
          child: const Text('Logout'),
        ),
      ),
    );
  }
}