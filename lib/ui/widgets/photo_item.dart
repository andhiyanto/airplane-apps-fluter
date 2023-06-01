import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class PhotoItem extends StatelessWidget {
  final String ImageUrl;
  const PhotoItem({Key? key, required this.ImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 16),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              image: AssetImage(
                ImageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
