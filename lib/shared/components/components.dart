// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mynews/modules/webview/webview.dart';

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
              color: Colors.orange,
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
  // tittle=list["title"],

  list,
  context, {
  bool color = false,
  String? tittle,
  ImageProvider? image,
}) =>
    InkWell(
      onTap: () {
        navigateTo(context, WebviewScrean(list["url"]));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Container(
          width: double.infinity,
          height: 330,
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
                    // title == null ? "jhsdljhg" : title = "${list['content']}",
                    image: NetworkImage(
                      (list["urlToImage"] == null)
                          ? "https://cdn.elwatannews.com/watan/840x473/5956948381439567683.jpg"
                          : "${list["urlToImage"]}",
                      // "${list["urlToImage"]}",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                // width: double.infinity,
                height: 200,
              ),

              //title

              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  //"title"
                  (list["title"] == null) ? "Fayoum News" : "${list["title"]}",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              //description
              //لا لايمكن محاوطة الExpanded ب Padding
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Text(
                    (list["description"] == null)
                        ? "اخبار الفيوم "
                        : "${list["description"]}",
                    // "${list['content']}",
                    style: Theme.of(context).textTheme.displaySmall,
                    textDirection: TextDirection.rtl,

                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),

              //Author
              Padding(
                padding: EdgeInsets.only(
                  left: 5,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        (list["urlToImage"] == null)
                            ? "https://cdn.elwatannews.com/watan/840x473/5956948381439567683.jpg"
                            : "${list["urlToImage"]}",
                        // "${list["urlToImage"]}",
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        (list["author"] == null)
                            ? "Fayoum News"
                            : "${list["author"]}",
                        textDirection: TextDirection.ltr,
                        style: Theme.of(context).textTheme.displayMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),

              //Time & Date
              Padding(
                padding: EdgeInsets.only(
                  left: 7,
                ),
                child: Text(
                  "${list['publishedAt']}",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.labelSmall,
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

Widget buildCategoryList(context, {required list, String? tittle}) =>
    ListView.separated(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (
        context,
        index,
      ) =>
          buildCategoryItem(
        list[index], context,
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 3,
      ),
      itemCount: list.length,
    );

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
