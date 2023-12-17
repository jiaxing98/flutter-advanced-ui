import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorial/constants/images.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/image_container.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        SizedBox(
          width: 220,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.email_outlined,
                color: Colors.black,
                size: 30,
              ),
              Icon(
                Icons.calendar_today,
                color: Colors.black,
                size: 30,
              ),
              Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
              ImageContainer(
                height: 35,
                width: 35,
                image: kClubhouseC1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
