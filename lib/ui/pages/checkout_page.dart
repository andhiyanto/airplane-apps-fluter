import 'package:airplane/ui/pages/Success_Checkout.dart';
import 'package:airplane/ui/widgets/customeBookingDetail.dart';
import 'package:airplane/ui/widgets/customeButton.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  Widget route() {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 291,
            height: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_checkout.png"),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CGK",
                    style: BlackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                  ),
                  Text(
                    "Tangerang",
                    style: GreyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "TLC",
                    style: BlackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semibold),
                  ),
                  Text(
                    "Ciliwung",
                    style: GreyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget destinationTile() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
        color: KeyWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // ignore: prefer_const_constructors
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_destination1.png'),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: BlackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tangerang',
                      style: GreyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.only(right: 2, bottom: 3),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.8',
                        style: BlackTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          //NOTE: BOOKING DETAILS TEXT
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              'Booking Details',
              style: BlackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
          //NOTE: BOOKING DETAILS ITEM
          BookDetail(
              title: 'Traveler',
              valueText: '2 person',
              valueColor: KeyBlackColor),
          BookDetail(
              title: 'Seat', valueText: 'A3, B3', valueColor: KeyBlackColor),
          BookDetail(
              title: 'Insurance', valueText: 'Yes', valueColor: KeyGreenColor),
          BookDetail(
              title: 'Refundable', valueText: 'NO', valueColor: KeyRedColor),
          BookDetail(title: 'VAT', valueText: '45%', valueColor: KeyBlackColor),
          BookDetail(
              title: 'Price',
              valueText: 'IDR 8.500.690',
              valueColor: KeyBlackColor),
          BookDetail(
              title: 'Grand Total',
              valueText: 'IDR 12.000.000',
              valueColor: PrimaryColor),
          //NOTE: PAYMENT DETAIL
        ],
      ),
    );
  }

  Widget payment() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: KeyWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Details",
            style: BlackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      width: 100,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image_card.png"),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 6),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icon_plane.png"),
                                ),
                              ),
                            ),
                            Text(
                              "PAY",
                              style: WhiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: semibold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "IDR 80.400.000",
                        style: BlackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semibold),
                      ),
                      Text(
                        "Current Balance",
                        style: GreyTextStyle.copyWith(
                            fontSize: 14, fontWeight: light),
                      ),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget paynowbutton(BuildContext context) {
    return ButtonCustome(
      title: 'Pay Now',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SuccsesCheckout(),
          ),
        );
      },
      margin: EdgeInsets.only(top: 30),
    );
  }

  Widget tacbutton() {
    return Container(
      alignment: Alignment.center,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      child: Text(
        'Terms and Conditions',
        style: GreyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          route(),
          destinationTile(),
          payment(),
          paynowbutton(context),
          tacbutton(),
        ],
      ),
    );
  }
}
