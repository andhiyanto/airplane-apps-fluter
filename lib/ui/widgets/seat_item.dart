import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:airplane/ui/pages/detail_page.dart';

class SeatItem extends StatelessWidget {
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //NOTE
    //0 unavailabel
    //1 availabel
    //2 selected
    backgroundColor() {
      switch (status) {
        case 0:
          return Kunavalibel;
        case 1:
          return avalibel;
        case 2:
          return PrimaryColor;
        default:
          Kunavalibel;
      }
    }

    colorBorder() {
      switch (status) {
        case 0:
          return Kunavalibel;
        case 1:
          return SecoundaryColor;
        case 2:
          return PrimaryColor;
        default:
          Kunavalibel;
      }
    }

    childText() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return SizedBox();
        case 2:
          return Center(
            child: Text(
              'YOU',
              style:
                  WhiteTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          );
        default:
          SizedBox();
      }
    }

    borderStyle() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return SizedBox();
        case 2:
          return Center();
        default:
          SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: PrimaryColor, width: 2),
      ),
      child: childText(),
    );
  }
}
