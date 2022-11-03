import 'package:flutter/material.dart';
// import 'main.dart';
import 'home.dart';


class RegisterRoute extends StatelessWidget {
  const RegisterRoute({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController pass = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: Form(
          key: formKey,
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
                controller: pass,
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
                    return 'Please Confirm Password';
                  }
                  if (value != pass.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data...')),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeRoute()),
                        );
                      }
                    },
                    child: const Text('Register Account'),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterRoute()),
                      );
                  },  
                  child: const Text('Already have an Account? Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class RegisterPage extends StatelessWidget {
//   const RegisterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Enter Name',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please Enter a Name';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Enter User Name',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please Enter a User Name';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             obscureText: true,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Enter Password',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please Enter a Password';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             obscureText: true,
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: 'Confirm Password',
//             ),
//             validator: (value) {
//               if (value == null || value.isEmpty) {
//                 return 'Please Cofirm Password';
//               }
//               return null;
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
