// import 'package:flutter/material.dart';
// import 'package:myapp/widget/widgets_support.dart';

// class Details extends StatefulWidget {
//   const Details({super.key});

//   @override
//   State<Details> createState() => _DetailsState();
// }

// class _DetailsState extends State<Details> {
//   int a = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: const Icon(
//                 Icons.arrow_back_ios_new_outlined,
//                 color: Colors.black,
//               ),
//             ),
//             Image.asset(
//               "images/salad2.png",
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height / 2.5,
//               fit: BoxFit.fill,
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Mediterranean",
//                       style: Appwidget.semiBoldTextFieldStyle(),
//                     ),
//                     Text(
//                       "Chickpea Salad",
//                       style: Appwidget.boldTextFieldStyle(),
//                     ),
//                   ],
//                 ),
//                 const Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     if (a > 1) {
//                       a--;
//                     }
//                     setState(() {});
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: const Icon(
//                       Icons.remove,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Text(
//                   a.toString(),
//                   style: Appwidget.boldTextFieldStyle(),
//                 ),
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     a++;
//                     setState(() {});
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(8)),
//                     child: const Icon(
//                       Icons.add,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             Text(
//               "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//               maxLines: 3,
//               style: Appwidget.lightlineTextFieldStyle(),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Row(
//               children: [
//                 Text(
//                   'Delivery Time',
//                   style: Appwidget.semiBoldTextFieldStyle(),
//                 ),
//                 const SizedBox(
//                   width: 25,
//                 ),
//                 const Icon(
//                   Icons.alarm,
//                   color: Colors.black54,
//                 ),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   '30 min',
//                   style: Appwidget.semiBoldTextFieldStyle(),
//                 )
//               ],
//             ),
//             const Spacer(),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 40.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Total Price',
//                         style: Appwidget.semiBoldTextFieldStyle(),
//                       ),
//                       Text(
//                         '\$25',
//                         style: Appwidget.boldTextFieldStyle(),
//                       ),
//                     ],
//                   ),
//                   Container(
//                       width: MediaQuery.of(context).size.width / 2,
//                       padding: const EdgeInsets.all(5),
//                       decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Text('Add to Cart',
//                               style: Appwidget.addtocartTextFieldStyle()),
//                           const SizedBox(
//                             width: 50,
//                           ),
//                           Container(
//                             padding: const EdgeInsets.all(3),
//                             decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: const Icon(
//                               Icons.shopping_cart_outlined,
//                               color: Colors.white,
//                             ),
//                           )
//                         ],
//                       )),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
