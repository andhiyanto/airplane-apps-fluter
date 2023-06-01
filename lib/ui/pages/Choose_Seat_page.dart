import 'package:airplane/ui/widgets/customeButton.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ChooseSeat extends StatelessWidget {
  const ChooseSeat({Key? key}) : super(key: key);

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        'Select Your\n Favorite Seat',
        style: BlackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
      ),
    );
  }

  Widget SeatStatus() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_availabel.png'),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            "Available",
            style: BlackTextStyle.copyWith(fontSize: 14, fontWeight: reguler),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_selected.png'),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            "Selected",
            style: BlackTextStyle.copyWith(fontSize: 14, fontWeight: reguler),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_unavailabel.png'),
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            "Unavailable",
            style: BlackTextStyle.copyWith(fontSize: 14, fontWeight: reguler),
          ),
        ],
      ),
    );
  }

  Widget SelectSeat() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: KeyWhiteColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'A',
                    style: GreyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'B',
                    style: GreyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '',
                    style: GreyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'C',
                    style: GreyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    'D',
                    style: GreyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Kunavalibel,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Kunavalibel,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    '1',
                    style: GreyTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Kunavalibel,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Kunavalibel,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: KBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            title(),
            SeatStatus(),
            SelectSeat(),
          ],
        ),
      ),
    );
  }
}
