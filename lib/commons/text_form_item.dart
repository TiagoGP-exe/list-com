import 'package:flutter/material.dart';

Widget textFormItem(BuildContext context, String name, bool obscure) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.8,
    child: TextFormField(
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      obscureText: obscure,
      // validator: (varTest) {},
      decoration: InputDecoration(
          hintText: name,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              width: 1,
              style: BorderStyle.none,
            ),
          ),
          labelStyle: const TextStyle(
            fontSize: 12,
            color: Colors.orange,
          ),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: Colors.orange,
                width: 1,
              ))),
    ),
  );
}
