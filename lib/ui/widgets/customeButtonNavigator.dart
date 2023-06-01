import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ButtonNavigator extends StatelessWidget {
  final String iconUrl;
  final bool isSelected;
  const ButtonNavigator(
      {Key? key, required this.iconUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                iconUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? PrimaryColor : KTransparenColor,
            borderRadius: BorderRadius.circular(18),
          ),
        )
      ],
    );
  }
}
