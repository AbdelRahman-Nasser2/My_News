// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mynews/shared/cubit/cubit.dart';

//Login Screen components
Widget appBar() => AppBar();

// Email Address Login

Widget text({
  String? Function(String?)? validate,
  required TextEditingController controller,
  required TextInputType input,
  required String hint,
  required String label,
  required IconData prifix,
  IconData? suffix,
  bool password = false,
  Function(String)? onchange,
  Function(String)? onsubmit,
  Function()? suffixpressed,
  Function()? onTap,
}) =>
    TextFormField(
      obscureText: password,
      controller: controller,
      validator: validate,
      onTap: onTap,
      style: const TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      keyboardAppearance: Brightness.light,
      keyboardType: input,
      textCapitalization: TextCapitalization.words,
      onChanged: onchange,
      onFieldSubmitted: onsubmit,
      decoration: InputDecoration(
          // isDense: true,
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          fillColor: Colors.white,
          // focusColor: Colors.amber,
          // hoverColor: Colors.deepPurple,
          prefix: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(prifix),
          ),
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: HexColor('#b5862e'),
              width: 1,
            ),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              width: 1,
              color: HexColor('#b5862e'),
            ),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
          filled: true,
          suffixIcon: suffix != null
              ? IconButton(
                  icon: Icon(suffix),
                  onPressed: suffixpressed,
                )
              : null,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 24, 20, 2)),
    );

//Category

//Category List

//Category Shape
Widget buildCategoryItem(
  list,
  context, {
  bool color = false,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.circular(28),
// color:Theme.of(context)?Colors.white :HexColor('333739'),
// Colors.white,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, blurStyle: BlurStyle.outer, spreadRadius: 5)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              //image
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: NetworkImage(
                      "${list['urlToImage']}",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                // width: double.infinity,
                height: 200,
              ),
// SizedBox(
//   height: 5,
// ),

              //title
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      // flex: 1,
                      child: Text(
                        "${list['title']}",
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.displayMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                        onPressed: AppCubit.get(context).iconChange,
                        icon: Icon(
                          Icons.favorite_outline_rounded,
                          color: AppCubit.get(context).fav,
                        )),
                  ],
                ),
              ),

              //description
              Padding(
                padding: EdgeInsets.only(
                  left: 5,
                ),
                child: Expanded(
                  child: Text(
                    "${list['content']}",
                    style: Theme.of(context).textTheme.displaySmall,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),

              //Author
              Text(
                "${list['author']}",
                textDirection: TextDirection.ltr,
                style: Theme.of(context).textTheme.displayMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              //Time & Date
              Expanded(
                child: Text(
                  "${list['publishedAt']}",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );

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

Widget buildCategoryList(
  context, {
  required list,
}) =>
    ListView.separated(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => buildCategoryItem(list[index], context),
      separatorBuilder: (context, index) => SizedBox(),
      itemCount: list.length,
    );

//Category
Widget buildCategory(
  context, {
  required Function() onpress,
  required String type,
  required List list,
}) =>
    Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        // color: Colors.grey[100],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Text(
                        type,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextButton(
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                        onPressed: onpress,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: buildCategoryList(context, list: list)),
          ],
        ),
      ),
    );

// Widget buildListItems ()=>ListView.separated(
//   itemBuilder: (context, index) => Expanded(child: buildCategoryItem(), context)),
//   separatorBuilder: (context, index) => Padding(
//     padding:  EdgeInsets.symmetric(horizontal: 20.0),
//     child: Container(
//       width: double.infinity,
//       height: 1,
//       color: HexColor('#b5862e'),
//
//     ),
//   ),
//   itemCount: 10,
// );

// Widget buildTaskItem( {Map? model}
//     ) =>Padding(
//   padding: const EdgeInsets.all(20.0),
//   child:   Row(
//
//     mainAxisSize: MainAxisSize.max,
//     crossAxisAlignment: CrossAxisAlignment.center,
//
//     children:
//
//     [
//
//       CircleAvatar(
//
//         radius: 40.0,
//
//
//
//       ),
//
//       SizedBox(
//
//         width: 20,),
//
//       Column(
//
//         mainAxisSize: MainAxisSize.min,
//
//         mainAxisAlignment: MainAxisAlignment.start,
//
//         crossAxisAlignment: CrossAxisAlignment.start,
//
//         children:
//
//         [
//
//           Text(
//
//             '${model!['title']}',
//
//             style: TextStyle(
//
//               fontSize: 18.0,
//
//               fontWeight: FontWeight.w700,
//
//             ),
//
//           ),
//
//           SizedBox(
//
//             height: 5.0,
//
//           ),
//
//
//
//           Row(
//
//             children: [
//
//               SizedBox(
//
//                 width: 15,
//
//               ),
//
//               Text(
//
//                 '${model!['note']}',
//
//                 style: TextStyle(
//
//                   fontSize: 14.0,
//
//                   color: Colors.grey,
//
//                 ),
//
//               ),
//
//             ],
//
//           ),
//
//
//
//           Row(
//
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.end,
//
//             children:
//
//             [
//
//               Text(
//
//                 '${model!['date']}',
//
//                 style: TextStyle(
//
//                     fontSize: 16,
//
//                     fontWeight: FontWeight.bold,
//
//                     color: Colors.black
//
//                 ),
//
//               ),
//
//
//               SizedBox(
//                 width: 20,
//               ),
//
//               Text(
//
//                 '${model!['time']}',
//
//                 style: TextStyle(
//
//                     fontSize: 16,
//
//                     fontWeight: FontWeight.bold,
//
//                     color: Colors.black
//
//                 ),
//
//               )
//
//             ],
//
//           ),
//
//
//
//
//
//         ],
//
//       ),
//
//     ],
//
//   ),
// );

Widget bottum({
  onpress,
  required String nameButton,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,
            ),
            borderRadius: BorderRadius.circular(30)),
        child: MaterialButton(
          autofocus: true,
          onPressed: onpress,
          child: Text(
            nameButton,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );

Widget defaultName({
  required double width,
  @required IconData? prefix,
  IconData? suffix,
  required Function onpress,
  Function(String)? onsubmited,
  required String lable,
  required TextInputType? type,
  required TextEditingController controller,
  @required validate,
  onChange,
}) =>
    Container(
      width: width,
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.black,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          labelText: lable,
          suffixIcon: Icon(suffix),
          prefixIcon: Icon(prefix),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
        ),
        keyboardType: type,
        onFieldSubmitted: onsubmited,
        validator: validate,
        onChanged: onChange,
      ),
    );

Widget defaultLogin({
  @required onpress,
  required String nameButtom,
  @required double? width,
  @required double? height,
}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: double.infinity,
      color: Colors.blueAccent,
      child: TextButton(
        onPressed: onpress,
        child: Text(
          nameButtom,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
    ),
  );
}

//Methods

void navigateTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}
