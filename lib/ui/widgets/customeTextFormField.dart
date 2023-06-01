import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomeTextFormField extends StatelessWidget {
  final String titile;
  final String hintText;
  final bool obscureText;
  const CustomeTextFormField(
      {Key? key,
      required this.titile,
      required this.hintText,
      this.obscureText = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titile),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: KeyBlackColor,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: PrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
