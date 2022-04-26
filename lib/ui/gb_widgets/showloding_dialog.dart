import 'package:flutter/material.dart';


showLoaderDialog(BuildContext context,String txt){
    AlertDialog alert=AlertDialog(
      content:  Row(
        children: [
          const CircularProgressIndicator(),
          Container(margin: const EdgeInsets.only(left: 7),child:Text(txt )),
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }