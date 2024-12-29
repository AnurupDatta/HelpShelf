// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:myapp/pages/details.dart';
// import 'package:myapp/services/database.dart';
// import 'package:myapp/widget/widgets_support.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});
//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   bool chips = false, cookies = false, drinks = false, chocolates = false;

//  Stream? fooditemSteam;

//  ontheload()async{
//   fooditemSteam= await DatabaseMethods().getFoodItem("Pizza");
//   setState(() {
    
//   });
//  }
//   @override
//   void initState() {
//     ontheload();
//     super.initState();
//   }
//   // Widget allItems(){
//   //   return StreamBuilder(stream: fooditemSteam,  builder: (context, AsyncSnapshot snapshot){
//   //     return snapshot.hasData? ListView.builder(
//   //       padding: EdgeInsets.zero,
//   //       itemCount: snapshot.data.docs.length,
//   //       shrinkWrap: true,
//   //       scrollDirection: Axis.horizontal,
//   //       itemBuilder: (context, index){
//   //         DocumentSnapshot ds = snapshot.data.docs[index];
//   //         return

//   //     }): CircularProgressIndicator();

//   //   });
//   // }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           margin: const EdgeInsets.only(top: 50.0, left: 10.0, right: 20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Hello Anurup",
//                     style: Appwidget.boldTextFieldStyle(),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(3),
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(10)),
//                     child: const Icon(
//                       Icons.shopping_cart,
//                       color: Colors.white,
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'Delicious Foods',
//                 style: Appwidget.headlineTextFieldStyle(),
//               ),
//               Text(
//                 'Can be discovered from your Freind',
//                 style: Appwidget.lightlineTextFieldStyle(),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               showItem(),
//               const SizedBox(
//                 height: 20.0,
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const Details()));
//                       },
//                       child: Container(
//                         margin: const EdgeInsets.all(4),
//                         child: Material(
//                           elevation: 5.0,
//                           borderRadius: BorderRadius.circular(20),
//                           child: Container(
//                             padding: const EdgeInsets.all(14),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Image.asset(
//                                   "images/salad2.png",
//                                   height: 150,
//                                   width: 150,
//                                   fit: BoxFit.cover,
//                                 ),
//                                 const SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Text(
//                                   "Veggie Taco Hash",
//                                   style: Appwidget.semiBoldTextFieldStyle(),
//                                 ),
//                                 const SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Text("Fresh and Healthy",
//                                     style: Appwidget.lightlineTextFieldStyle()),
//                                 const SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Text(
//                                   "\$25",
//                                   style: Appwidget.semiBoldTextFieldStyle(),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Material(
//                       elevation: 5.0,
//                       borderRadius: BorderRadius.circular(20),
//                       child: Container(
//                         padding: const EdgeInsets.all(14),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Image.asset(
//                               "images/salad2.png",
//                               height: 150,
//                               width: 150,
//                               fit: BoxFit.cover,
//                             ),
//                             const SizedBox(
//                               height: 5.0,
//                             ),
//                             Text(
//                               "Mix Veg Salad",
//                               style: Appwidget.semiBoldTextFieldStyle(),
//                             ),
//                             const SizedBox(
//                               height: 5.0,
//                             ),
//                             Text("Spicy with Onion",
//                                 style: Appwidget.lightlineTextFieldStyle()),
//                             const SizedBox(
//                               height: 5.0,
//                             ),
//                             Text(
//                               "\$28",
//                               style: Appwidget.semiBoldTextFieldStyle(),
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Material(
//                   elevation: 5,
//                   borderRadius: BorderRadius.circular(8),
//                   child: Container(
//                     padding: const EdgeInsets.all(5),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           "images/salad2.png",
//                           height: 120,
//                           width: 120,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         Column(
//                           children: [
//                             Container(
//                               width: MediaQuery.of(context).size.width / 2,
//                               child: Text(
//                                 "Mediterranian Chickpea Salad",
//                                 style: Appwidget.boldTextFieldStyle(),
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width / 2,
//                               child: Text(
//                                 "Honey Good Cheese",
//                                 style: Appwidget.lightlineTextFieldStyle(),
//                               ),
//                             ),
//                             Container(
//                               width: MediaQuery.of(context).size.width / 2,
//                               child: Text(
//                                 "\$28",
//                                 style: Appwidget.boldTextFieldStyle(),
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           )),
//     );
//   }

//   // widget to show the box category of the item .
//   Widget showItem() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         GestureDetector(
//           onTap: () {
//             chips = true;
//             cookies = false;
//             drinks = false;
//             chocolates = false;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: chips ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: const EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/chips.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: chips ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             chips = false;
//             cookies = true;
//             drinks = false;
//             chocolates = false;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: cookies ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: const EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/cookies.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: cookies ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             chips = false;
//             cookies = false;
//             drinks = true;
//             chocolates = false;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: drinks ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: const EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/drinks.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: drinks ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             chips = false;
//             cookies = false;
//             drinks = false;
//             chocolates = true;
//             setState(() {});
//           },
//           child: Material(
//             elevation: 5,
//             borderRadius: BorderRadius.circular(10),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: chocolates ? Colors.black : Colors.white,
//                   borderRadius: BorderRadius.circular(10)),
//               padding: const EdgeInsets.all(8),
//               child: Image.asset(
//                 "images/chocolates.png",
//                 height: 40,
//                 width: 40,
//                 fit: BoxFit.cover,
//                 color: chocolates ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
