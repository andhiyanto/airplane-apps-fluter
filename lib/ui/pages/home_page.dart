import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/destination_card.dart';
// ignore: duplicate_import
import '../widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget Header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: BlackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: GreyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tanggerang',
                imageUrl: 'assets/image_destination1.png',
                rating: 5.0,
              ),
              const DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/image_destination2.png',
                rating: 5.0,
              ),
              const DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/image_destination3.png',
                rating: 5.0,
              ),
              const DestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/image_destination4.png',
                rating: 5.0,
              ),
              const DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/image_destination5.png',
                rating: 5.0,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinationTile() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style:
                  BlackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            const DestinationTile(
              city: 'serang',
              name: 'Danau Beratan',
              imageUrl: 'assets/image_destination6.png',
              rating: 5.0,
            ),
            const DestinationTile(
              city: 'serang',
              name: 'Danau Beratan',
              imageUrl: 'assets/image_destination6.png',
              rating: 5.0,
            ),
            const DestinationTile(
              city: 'serang',
              name: 'Danau Beratan',
              imageUrl: 'assets/image_destination6.png',
              rating: 5.0,
            ),
            const DestinationTile(
              city: 'serang',
              name: 'Danau Beratan',
              imageUrl: 'assets/image_destination6.png',
              rating: 5.0,
            ),
            const DestinationTile(
              city: 'serang',
              name: 'Danau Beratan',
              imageUrl: 'assets/image_destination6.png',
              rating: 5.0,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        Header(),
        popularDestination(),
        newDestinationTile(),
      ],
    );
  }
}
