import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookDetail extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;
  const BookDetail(
      {Key? key,
      required this.title,
      required this.valueText,
      required this.valueColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            child: Column(
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
              ],
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            title,
            style: BlackTextStyle.copyWith(fontSize: 14),
          ),
          Spacer(),
          Text(
            valueText,
            style: BlackTextStyle.copyWith(
                fontSize: 14, fontWeight: semibold, color: valueColor),
          ),
        ],
      ),
    );
  }
}
