import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class InterstWidget extends StatelessWidget {
  final String text;
  const InterstWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_cek.png'),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'Kids Park',
            style: BlackTextStyle,
          ),
        ],
      ),
    );
  }
}
