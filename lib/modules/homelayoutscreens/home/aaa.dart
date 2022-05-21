// import 'package:flutter/widgets.dart';
//
// class GreenFrog extends StatelessWidget {
//   const GreenFrog({ Key? key }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: const Color(0xFF2DBD3A));
//   }
// }
//
//
//
//
//
//
//               Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//               child: Container(
//                 width: 150,
//                 height: 200,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(28),
// // color:Theme.of(context)?Colors.white :HexColor('333739'),
// // Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 2,
//                           blurStyle: BlurStyle.outer,
//                           spreadRadius: 5)
//                     ]),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
// //image
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(28),
//                         image: DecorationImage(
//                           image: NetworkImage("${list['urlToImage']}"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       width: 150,
//                       height: 120,
//                     ),
// // SizedBox(
// //   height: 5,
// // ),
//
// //title
//                     Padding(
//                       padding: EdgeInsets.only(left: 5),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Expanded(
//                             flex: 1,
//                             child: Text(
//                               "${list['title']}",
//                               textDirection: TextDirection.ltr,
//                               style: Theme.of(context).textTheme.displayMedium,
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           IconButton(
//                               onPressed: AppCubit.get(context).iconChange,
//                               icon: Icon(
//                                 Icons.favorite_outline_rounded,
//                                 color: AppCubit.get(context).fav,
//                               )),
//                         ],
//                       ),
//                     ),
//
// //description
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: 5,
//                       ),
//                       child: Text(
//                         "${list['description']}",
//                         style: Theme.of(context).textTheme.displaySmall,
//                         maxLines: 3,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//
//               Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//               child: Container(
//                 width: double.infinity,
//                 height: 300,
//                 decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(28),
// // color:Theme.of(context)?Colors.white :HexColor('333739'),
// // Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 2,
//                           blurStyle: BlurStyle.outer,
//                           spreadRadius: 5)
//                     ]),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     //image
//                     Expanded(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(28),
//                           image: DecorationImage(
//                             image: NetworkImage("${list['urlToImage']}"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         // width: double.infinity,
//                         height: 120,
//                       ),
//                     ),
// // SizedBox(
// //   height: 5,
// // ),
//
//                     //title
//                     Padding(
//                       padding: EdgeInsets.only(left: 5),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Expanded(
//                             // flex: 1,
//                             child: Text(
//                               "${list['title']}",
//                               textDirection: TextDirection.ltr,
//                               style: Theme.of(context).textTheme.displayMedium,
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           IconButton(
//                               onPressed: AppCubit.get(context).iconChange,
//                               icon: Icon(
//                                 Icons.favorite_outline_rounded,
//                                 color: AppCubit.get(context).fav,
//                               )),
//                         ],
//                       ),
//                     ),
//
//                     //description
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: 5,
//                       ),
//                       child: Text(
//                         "${list["content"]}",
//                         style: Theme.of(context).textTheme.displaySmall,
//                         maxLines: 3,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     //Time & Date
//                     Expanded(
//                       child: Row(
//                         children: [
//                           Text(
//                             "${list["author"]}",
//                             textDirection: TextDirection.ltr,
//                             style: Theme.of(context).textTheme.displayMedium,
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             "${list['publishedAt']}",
//                             textDirection: TextDirection.ltr,
//                             style: Theme.of(context).textTheme.displayMedium,
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//
//               Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//               child: Container(
//                 width: 150,
//                 height: 200,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(28),
// // color:Theme.of(context)?Colors.white :HexColor('333739'),
// // Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                           blurRadius: 2,
//                           blurStyle: BlurStyle.outer,
//                           spreadRadius: 5)
//                     ]),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
// //image
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(28),
//                         image: DecorationImage(
//                           image: NetworkImage("${list['urlToImage']}"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       width: 150,
//                       height: 120,
//                     ),
// // SizedBox(
// //   height: 5,
// // ),
//
// //title
//                     Padding(
//                       padding: EdgeInsets.only(left: 5),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Expanded(
//                             flex: 1,
//                             child: Text(
//                               "${list['title']}",
//                               textDirection: TextDirection.ltr,
//                               style: Theme.of(context).textTheme.displayMedium,
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           IconButton(
//                               onPressed: AppCubit.get(context).iconChange,
//                               icon: Icon(
//                                 Icons.favorite_outline_rounded,
//                                 color: AppCubit.get(context).fav,
//                               )),
//                         ],
//                       ),
//                     ),
//
// //description
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: 5,
//                       ),
//                       child: Text(
//                         "${list['description']}",
//                         style: Theme.of(context).textTheme.displaySmall,
//                         maxLines: 3,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
