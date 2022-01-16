// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class Cancel extends StatefulWidget {
//   const Cancel({Key? key}) : super(key: key);
//
//   @override
//   _CancelState createState() => _CancelState();
// }
//
// class _CancelState extends State<Cancel> {
//   var _itemCount = null;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         physics: NeverScrollableScrollPhysics(),
//         child: Container(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 60),
//                 child: Center(child: Image(image: AssetImage("images/image 29.png"))),
//               ),
//               Container(
//                 child: Column(
//                   children: [
//                     Text("This order will no longer be visible in your"),
//                   ],
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.topLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 70),
//                   child: Column(
//                     children: [
//                       Text("cart."),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20,),
//             Container(
//               height: 120,
//               width: 360,
//               decoration: BoxDecoration(
//                 border: Border.symmetric(horizontal: BorderSide.none),
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.white.withOpacity(0.5),
//                 //color: Colors.white,
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20), // Image border
//                         child: SizedBox.fromSize(
//                           size: Size.fromRadius(48), // Image radius
//                           child: Image.asset("images/photo.png"),
//                         ),
//                       ),
//                       SizedBox(width: 10,),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Goggles",
//                             style: TextStyle(
//                               color: Colors.grey,
//                               fontSize: 18,
//                             ),
//                             ),
//                             SizedBox(height: 20,),
//                             Text("1000.0",
//                               style: TextStyle(
//                                 color: Colors.black38,
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(width: 10,),
//                       Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 60),
//                             child: Icon(Icons.cancel_outlined,
//                             color: Colors.grey,
//                             ),
//                           ),
//                           SizedBox(height: 20,),
//                           FittedBox(
//                             fit: BoxFit.cover,
//                             child: Row(
//                               children: [
//                                 IconButton(
//                                   onPressed: ()=> setState(() {
//                                     _itemCount;
//                                   }),
//                                   icon: Icon(Icons.add_box, color: Colors.grey,),
//                                 ),
//                                 Text("01"),
//                                 //Text(_itemCount.toString()),
//                                 IconButton(
//                                   onPressed: ()=> setState(() {
//                                     _itemCount != 01 ? _itemCount : _itemCount;
//                                   }),
//                                   icon: Icon(Icons.remove_circle_outline, color: Colors.grey,),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//               SizedBox(height: 20,),
//               Container(
//                 height: 120,
//                 width: 360,
//                 decoration: BoxDecoration(
//                   border: Border.symmetric(horizontal: BorderSide.none),
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white.withOpacity(0.6),
//                   //color: Colors.white,
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20), // Image border
//                           child: SizedBox.fromSize(
//                             size: Size.fromRadius(48), // Image radius
//                             child: Image.asset("images/photo.png"),
//                           ),
//                         ),
//                         SizedBox(width: 10,),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("Goggles",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(height: 20,),
//                               Text("1000.0",
//                                 style: TextStyle(
//                                   color: Colors.black38,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(width: 10,),
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 60),
//                               child: Icon(Icons.cancel_outlined,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                             SizedBox(height: 20,),
//                             FittedBox(
//                               fit: BoxFit.cover,
//                               child: Row(
//                                 children: [
//                                   IconButton(
//                                     onPressed: ()=> setState(() {
//                                       _itemCount;
//                                     }),
//                                     icon: Icon(Icons.add_box, color: Colors.grey,),
//                                   ),
//                                   Text("01"),
//                                   //Text(_itemCount.toString()),
//                                   IconButton(
//                                     onPressed: ()=> setState(() {
//                                       _itemCount != 01 ? _itemCount : _itemCount;
//                                     }),
//                                     icon: Icon(Icons.remove_circle_outline, color: Colors.grey,),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20,),
//               Container(
//                 height: 120,
//                 width: 360,
//                 decoration: BoxDecoration(
//                   border: Border.symmetric(horizontal: BorderSide.none),
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white.withOpacity(0.5),
//                   //color: Colors.white,
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20), // Image border
//                           child: SizedBox.fromSize(
//                             size: Size.fromRadius(48), // Image radius
//                             child: Image.asset("images/photo.png"),
//                           ),
//                         ),
//                         SizedBox(width: 10,),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("Goggles",
//                                 style: TextStyle(
//                                   color: Colors.grey,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                               SizedBox(height: 20,),
//                               Text("1000.0",
//                                 style: TextStyle(
//                                   color: Colors.black38,
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(width: 10,),
//                         Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 60),
//                               child: Icon(Icons.cancel_outlined,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                             SizedBox(height: 20,),
//                             FittedBox(
//                               fit: BoxFit.cover,
//                               child: Row(
//                                 children: [
//                                   IconButton(
//                                     onPressed: ()=> setState(() {
//                                       _itemCount;
//                                     }),
//                                     icon: Icon(Icons.add_box, color: Colors.grey,),
//                                   ),
//                                   Text("01"),
//                                   //Text(_itemCount.toString()),
//                                   IconButton(
//                                     onPressed: ()=> setState(() {
//                                       _itemCount != 01 ? _itemCount : _itemCount;
//                                     }),
//                                     icon: Icon(Icons.remove_circle_outline, color: Colors.grey,),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
// }
