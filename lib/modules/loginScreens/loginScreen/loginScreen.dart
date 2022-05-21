// ignore_for_file: file_names
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:myschool/layout/homeLayoutScreen.dart';
// import 'package:myschool/modules/signup/signup.dart';
// import 'package:myschool/shared/components/components.dart';

// class Loginscreen extends StatefulWidget {
//   const Loginscreen({Key? key}) : super(key: key);

//   @override
//   _LoginscreenState createState() => _LoginscreenState();
// }

// class _LoginscreenState extends State<Loginscreen> {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var formKey = GlobalKey<FormState>();
//   late bool obsecure = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           "My Chat",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.w100,
//           ),
//         ),
//         flexibleSpace: Container(
//           foregroundDecoration: BoxDecoration(),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.purple, Colors.red],
//               begin: Alignment.bottomCenter,
//               end: Alignment.topLeft,
//             ),
//           ),
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 40),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Form(
//               key: formKey,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   //EmailLogin

//                   text(
//                     validate: (value) {
//                       if (value!.isEmpty) {
//                         return 'Email Adress is required';
//                       }
//                       return null;
//                     },
//                     controller: emailController,
//                     input: TextInputType.emailAddress,
//                     hint: "Enter your email adress",
//                     label: "Your email",
//                     prifix: Icons.email_outlined,
//                   ),
//                   //

//                   SizedBox(
//                     height: 20,
//                   ),

//                   //PassswordLogin

//                   text(
//                       validate: (value) {
//                         if (value!.isEmpty) {
//                           return 'Email Adress is required';
//                         }
//                         return null;
//                       },
//                       controller: passwordController,
//                       password: obsecure,
//                       input: TextInputType.visiblePassword,
//                       hint: 'Enter your password',
//                       label: "Your password",
//                       prifix: Icons.lock,
//                       suffix: Icons.remove_red_eye,
//                       suffixpressed: () {
//                         setState(() {
//                           obsecure = !obsecure;
//                         });
//                       }),

//                   SizedBox(
//                     height: 8,
//                   ),

//                   Container(
//                     alignment: Alignment.centerRight,
//                     padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     child: Text(
//                       "Forgot Password?",
//                       style: TextStyle(
//                         textBaseline: TextBaseline.ideographic,
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),

//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 80, right: 80, top: 20, bottom: 20),
//                     child: Container(
//                       foregroundDecoration: BoxDecoration(),
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [Colors.purple, Colors.red],
//                             begin: Alignment.bottomCenter,
//                             end: Alignment.topLeft,
//                           ),
//                           borderRadius: BorderRadius.circular(30)),
//                       child: MaterialButton(
//                         autofocus: true,
//                         onPressed: () {
//                           if (formKey.currentState!.validate()) {
//                             print(emailController.text);
//                           }
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => homeLayoutScreen()),
//                           );
//                         },
//                         child: Text(
//                           "Login",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               fontStyle: FontStyle.italic),
//                         ),
//                       ),
//                     ),
//                   ),

//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Text(
//                         "Don't have account?  ",
//                         style: TextStyle(
//                           fontSize: 16.0,
//                           fontWeight: FontWeight.bold,
//                           decorationThickness: 10,
//                           color: Colors.white,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => signUpScreen()),
//                           );
//                         },
//                         child: Text(
//                           "Register Now",
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             fontStyle: FontStyle.italic,
//                             fontWeight: FontWeight.bold,
//                             decorationThickness: 10,
//                             decorationStyle: TextDecorationStyle.wavy,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Or use social account to login",
//                     style: TextStyle(
//                       color: Color(0x98FFFFFF),
//                       fontSize: 14,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       FaIcon(
//                         FontAwesomeIcons.facebook,
//                         size: 50,
//                         color: Colors.white,
//                         // color: Color(0x773124A1),
//                       ),
//                       SizedBox(
//                         width: 40,
//                       ),
//                       FaIcon(
//                         FontAwesomeIcons.google,
//                         size: 50,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';

class Abdo extends StatefulWidget {
  const Abdo({Key? key}) : super(key: key);

  @override
  State<Abdo> createState() => _AbdoState();
}

class _AbdoState extends State<Abdo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
