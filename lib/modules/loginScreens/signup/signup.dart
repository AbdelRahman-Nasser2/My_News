// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // import 'package:myschool/layout/homeLayoutScreen.dart';
// import 'package:myschool/shared/components/components.dart';

// // ignore: camel_case_types
// class signUpScreen extends StatefulWidget {
//   const signUpScreen({Key? key}) : super(key: key);

//   @override
//   _signUpScreenState createState() => _signUpScreenState();
// }

// // ignore: camel_case_types
// class _signUpScreenState extends State<signUpScreen> {
//   var fullname = new TextEditingController();
//   var emailadress = new TextEditingController();
//   var passwored = new TextEditingController();
//   // ignore: non_constant_identifier_names
//   var ConfirmPassword = new TextEditingController();

//   late bool passwordshow1 = true;
//   late bool passwordshow2 = true;
//   // final _auth = FirebaseAuth?.instance;
//   var formKey = GlobalKey<FormState>();
//   late String fullName;
//   late String email;
//   late String password;
//   late String conformpassword;
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
//       body: Form(
//         key: formKey,
//         child: Center(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 20.0),
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   //  fullname
//                   text(
//                     onchange: (value) {
//                       fullName = value;
//                     },
//                     validate: (value) {
//                       if (value!.isEmpty) {
//                         return "Name is required";
//                       }
//                       return null;
//                     },
//                     controller: fullname,
//                     input: TextInputType.name,
//                     hint: "enter your name here..",
//                     label: "Full name",
//                     prifix: Icons.person,
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),

//                   //  emailadress
//                   text(
//                     onchange: (value) {
//                       email = value;
//                     },
//                     validate: (value) {
//                       if (value!.isEmpty) {
//                         return "Email is required";
//                       }
//                       return null;
//                     },
//                     controller: emailadress,
//                     input: TextInputType.emailAddress,
//                     hint: "enter your email here..",
//                     label: "Email Adress",
//                     prifix: Icons.email,
//                   ),
//                   SizedBox(
//                     height: 16,
//                   ),

//                   //  passwored
//                   text(
//                       onchange: (value) {
//                         password = value;
//                       },
//                       validate: (value) {
//                         if (value!.isEmpty) {
//                           return "password is required";
//                         }
//                         return null;
//                       },
//                       controller: passwored,
//                       input: TextInputType.visiblePassword,
//                       hint: " Enter your password here..",
//                       label: "password",
//                       prifix: Icons.lock,
//                       password: passwordshow1,
//                       suffix: Icons.remove_red_eye,
//                       suffixpressed: () {
//                         setState(() {
//                           passwordshow1 = !passwordshow1;
//                         });
//                       }),
//                   SizedBox(
//                     height: 16,
//                   ),

//                   //  Confirm Password
//                   text(
//                       onchange: (value) {
//                         conformpassword = value;
//                       },
//                       suffix: Icons.remove_red_eye,
//                       suffixpressed: () {
//                         setState(() {
//                           passwordshow2 = !passwordshow2;
//                         });
//                       },
//                       password: passwordshow2,
//                       validate: (value) {
//                         if (value!.isEmpty) {
//                           return "password is required";
//                         }
//                         return null;
//                       },
//                       controller: ConfirmPassword,
//                       input: TextInputType.visiblePassword,
//                       hint: "enter your password here..",
//                       label: "Confirm Password",
//                       prifix: Icons.lock),
//                   SizedBox(
//                     height: 16,
//                   ),

//                   // Bottum sign up
//                   bottum(
//                       nameButton: "Create Account",
//                       onpress: () async {
//                         if (formKey.currentState!.validate()) {
//                           print(fullname.text);
//                           print(emailadress.text);
//                           print(passwored.text);
//                           print(ConfirmPassword.text);
//                         }

//                         // try
//                         // {
//                         //   // ignore: unused_local_variable
//                         //   final newUser =await _auth.createUserWithEmailAndPassword(
//                         // email: emailadress.text,
//                         // password: passwored.text
//                         // );
//                         // Navigator.push(context, MaterialPageRoute(builder: (context)=>homeLayoutScreen()));
//                         // }catch(error)
//                         // {
//                         //   print(error);
//                         // }
//                       }),

//                   SizedBox(
//                     height: 20,
//                   ),

//                   //  Or use social account to signIUp
//                   Text(
//                     "Or use social account to signIUp",
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
