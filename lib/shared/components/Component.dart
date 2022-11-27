




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Widget defaultTextFeild({
//   required TextEditingController controller,
//   required TextInputType type,
//   bool password=false,
//   required String label,
//   required IconData prefix,
//   Function? onchange,
//   Function? ontap,
//   IconButton? suffix,
//   required FormFieldValidator validate,
// })=> TextFormField(
//   controller: controller,
//   keyboardType: type,
//   obscureText: password,
//   decoration: InputDecoration(
//     labelText: label,
//     prefixIcon: Icon(prefix),
//     suffixIcon: suffix,
//     border: OutlineInputBorder(),
//   ),
//   validator: validate,
//   onChanged: (value){
//     onchange!(value);
//   },
//   onTap: (){
//     ontap!();
//   },
//
// );

Widget DefaultTextFeild({
  required TextEditingController controller,
  required TextInputType type,
  bool password=false,
  required IconData prefix,
  required String label,
  Function? onchange,
  Function? ontap,
  IconButton? suffix,
  bool? enable,
  required FormFieldValidator validator


})=>TextFormField(
  enabled: enable,
  controller: controller,
  onTap: (){
    ontap!();
  },
  onChanged: (value){
       onchange!(value);
  },
  obscureText: password,
  keyboardType: type,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix,
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width:3,color: Colors.deepOrange ),

),
  ),
  validator: validator,

);