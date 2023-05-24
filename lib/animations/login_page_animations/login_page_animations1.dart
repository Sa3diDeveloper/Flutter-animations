

// import 'package:flutter/material.dart';
// import 'dart:ui';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';


// class LogInAnimations extends StatefulWidget {
//   const LogInAnimations({super.key});

//   @override
//   _LogInAnimationsState createState() => _LogInAnimationsState();
// }

// class _LogInAnimationsState extends State<LogInAnimations> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: ScrollConfiguration(
//         behavior: MyBehavior(),
//         child: SingleChildScrollView(
//           child: SizedBox(
//             height: size.height,
//             child: Stack(
//               children: [
//                 SizedBox(
//                   height: size.height,
//                   child: Image.asset(
//                     'assets/bg.jpg',
//                     // #Image Url: https://unsplash.com/photos/bOBM8CB4ZC4
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ),
//                 Center(
//                   child: Column(
//                     children: [
//                       const Expanded(
//                         child: SizedBox(),
//                       ),
//                       Expanded(
//                         flex: 7,
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(30),
//                           child: BackdropFilter(
//                             filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
//                             child: SizedBox(
//                               width: size.width * .9,
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                       top: size.width * .15,
//                                       bottom: size.width * .1,
//                                     ),
//                                     child: Text(
//                                       'SIGN IN',
//                                       style: TextStyle(
//                                         fontSize: 25,
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.white.withOpacity(.8),
//                                       ),
//                                     ),
//                                   ),
//                                   component(
//                                     Icons.account_circle_outlined,
//                                     'User name...',
//                                     false,
//                                     false,
//                                   ),
//                                   component(
//                                     Icons.email_outlined,
//                                     'Email...',
//                                     false,
//                                     true,
//                                   ),
//                                   component(
//                                     Icons.lock_outline,
//                                     'Password...',
//                                     true,
//                                     false,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:MainAxisAlignment.spaceAround,
//                                     children: [
//                                       RichText(
//                                         text: TextSpan(
//                                           text: 'Forgotten password!',
//                                           style: const TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                           recognizer: TapGestureRecognizer()
//                                             ..onTap = () {
//                                               HapticFeedback.lightImpact();
                                            
//                                             },
//                                         ),
//                                       ),
//                                       RichText(
//                                         text: TextSpan(
//                                           text: 'Create a new Account',
//                                           style: const TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                           recognizer: TapGestureRecognizer()
//                                             ..onTap = () {
//                                               HapticFeedback.lightImpact();
                                           
//                                             },
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(height: size.width * .3),
//                                   InkWell(
//                                     splashColor: Colors.transparent,
//                                     highlightColor: Colors.transparent,
//                                     onTap: () {
//                                       HapticFeedback.lightImpact();
                                     
//                                     },
//                                     child: Container(
//                                       margin: EdgeInsets.only(
//                                         bottom: size.width * .05,
//                                       ),
//                                       height: size.width / 8,
//                                       width: size.width / 1.25,
//                                       alignment: Alignment.center,
//                                       decoration: BoxDecoration(
//                                         color: Colors.black.withOpacity(.1),
//                                         borderRadius: BorderRadius.circular(20),
//                                       ),
//                                       child: const Text(
//                                         'Sing-In',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                     ),),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Expanded(
//                         child: SizedBox(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget component(
//       IconData icon, String hintText, bool isPassword, bool isEmail) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       height: size.width / 8,
//       width: size.width / 1.25,
//       alignment: Alignment.center,
//       padding: EdgeInsets.only(right: size.width / 30),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(.1),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: TextField(
//         style: TextStyle(
//           color: Colors.white.withOpacity(.9),
//         ),
//         obscureText: isPassword,
//         keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
//         decoration: InputDecoration(
//           prefixIcon: Icon(
//             icon,
//             color: Colors.white.withOpacity(.8),
//           ),
//           border: InputBorder.none,
//           hintMaxLines: 1,
//           hintText: hintText,
//           hintStyle: TextStyle(
//             fontSize: 14,
//             color: Colors.white.withOpacity(.5),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyBehavior extends ScrollBehavior {
//   @override
//   Widget buildOverscrollIndicator(
//     BuildContext context,
//     Widget child,
//     AxisDirection axisDirection,
//   ) {
//     return child;
//   }
// }