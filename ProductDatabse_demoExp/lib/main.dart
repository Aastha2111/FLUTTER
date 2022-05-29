import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userprofile_demo/Dashboard.dart';
import 'package:userprofile_demo/RegistrationScreen.dart';
import 'package:userprofile_demo/Services/AuthenticationService.dart';

//aastha-19csu003
//JSMJ

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardScreen(),
  ));
}






// void main() => runApp(MaterialApp(
//     //   initialRoute: '/login',
//     //   routes: {
//     //     '/login': (context) => LoginScreen(),
//     //     '/register': (context) => RegistrationScreen(),
//     //     '/dashboard': (context) => DashboardScreen(),
//     //   },
//     // ));

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _key = GlobalKey<FormState>();
//   final _key = GlobalKey<FormState>();

//   final AuthenticationService _auth = AuthenticationService();

//   TextEditingController _emailContoller = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         color: Colors.deepPurple,
// //         child: Center(
// //           child: Form(
// //             key: _key,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text(
// //                   'Login',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 30,
// //                     fontWeight: FontWeight.w600,
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.all(32.0),
// //                   child: Column(
// //                     children: [
// //                       SizedBox(height: 30),
// //                       TextFormField(
// //                         controller: _emailContoller,
// //                         validator: (value) {
// //                           if (value.isEmpty) {
// //                             return 'Email cannot be empty';
// //                           } else
// //                             return null;
// //                         },
// //                         decoration: InputDecoration(
// //                             labelText: 'Email',
// //                             labelStyle: TextStyle(color: Colors.white)),
// //                         style: TextStyle(color: Colors.white),
// //                       ),
// //                       SizedBox(height: 30),
// //                       TextFormField(
// //                         controller: _passwordController,
// //                         obscureText: true,
// //                         validator: (value) {
// //                           if (value.isEmpty) {
// //                             return 'Password cannot be empty';
// //                           } else
// //                             return null;
// //                         },
// //                         decoration: InputDecoration(
// //                             labelText: 'Password',
// //                             labelStyle: TextStyle(color: Colors.white)),
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                       SizedBox(height: 5),
// //                       ElevatedButton(
// //                         child: Text('Not registerd? Sign up'),
// //                         onPressed: () {
// //                           Navigator.of(context).push(
// //                             CupertinoPageRoute(
// //                               fullscreenDialog: true,
// //                               builder: (context) => RegistrationScreen(),
// //                             ),
// //                           );
// //                         },
// //                         // Color: Colors.white,
// //                       ),
// //                       SizedBox(height: 30),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                         children: [
// //                           ElevatedButton(
// //                             child: Text('Login'),
// //                             onPressed: () {
// //                               if (_key.currentState.validate()) {
// //                                 signInUser();
// //                               }
// //                             },
// //                             // color: Colors.white,
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   void signInUser() async {
// //     dynamic authResult =
// //         await _auth.loginUser(_emailContoller.text, _passwordController.text);
// //     if (authResult == null) {
// //       print('Sign in error. could not be able to login');
// //     } else {
// //       _emailContoller.clear();
// //       _passwordController.clear();
// //       Navigator.pushNamed(context, '/dashboard');
// //     }
// //   }
// // }
