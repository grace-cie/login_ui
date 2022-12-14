import 'package:flutter/material.dart';
import 'register.dart';
import 'home.dart';

void main() async {
  runApp(const MaterialApp(
    title: 'Login',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    child: const Text('Login'),
                  ),
                ),
              // Padding( 
              //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              //   child: ElevatedButton(
              //     child: const Text('Login'),
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => const RegisterRoute()),
              //       );
              //     },
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: ElevatedButton(
                  child: const Text('Dont have an Account? Register'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterRoute()),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        // child: ElevatedButton(
        //   child: const Text('Open route'),
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => const SecondRoute()),
        //     );
        //   },
        // ),
      ),
    );
  }
}






// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final _formKey = GlobalKey<FormState>();
//     return MaterialApp(
//       title: 'Login UI by Riri',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Login System'),
//           backgroundColor: Colors.green[400],
//         ),
//         body: Center(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.account_circle_sharp),
//                     border: OutlineInputBorder(),
//                     labelText: 'Enter Username',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'This field cannot be Empty';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   obscureText: true,
//                   textInputAction: TextInputAction.continueAction,
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.lock),
//                     border: OutlineInputBorder(),
//                     labelText: 'Enter Password',
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'This field cannot be Empty';
//                     }
//                     return null;
//                   },
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(content: Text('Processing Data...')),
//                         );
//                       }
//                     },
//                     child: const Text('Login'),
//                   ),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const RegisterPage()));
//                     },
//                     child: const Text('Register'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   LoginPageState createState() {
//     return LoginPageState();
//   }
// }

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   RegisterPageState createState() {
//     return RegisterPageState();
//   }
// }
