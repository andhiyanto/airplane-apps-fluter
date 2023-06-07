import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/customeButton.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
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
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(status: 0),
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
                SeatItem(status: 1),
                SeatItem(status: 1),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(status: 0),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '2',
                      style: GreyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 1),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(status: 0),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '3',
                      style: GreyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 1),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(status: 0),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '4',
                      style: GreyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 1),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(status: 2),
                SeatItem(status: 0),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '5',
                      style: GreyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                SeatItem(status: 1),
                SeatItem(status: 1),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Sheat",
                  style:
                      GreyTextStyle.copyWith(fontWeight: light, fontSize: 14),
                ),
                Text(
                  "A3, B3",
                  style: BlackTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style:
                      GreyTextStyle.copyWith(fontWeight: light, fontSize: 14),
                ),
                Text(
                  "IDR 540.000.000",
                  style: PurpleTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customButton(BuildContext context) {
    return ButtonCustome(
      title: "Continue to Checkout",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CheckOutPage(),
          ),
        );
      },
      margin: EdgeInsets.only(top: 16, bottom: 46),
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
            customButton(context),
          ],
        ),
      ),
    );
  }
}
