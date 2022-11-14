import 'package:dkomik/core/utils/image_utils.dart';
import 'package:dkomik/core/utils/utils.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRichBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(ImageUtils.imgJudul),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Continue Read",
                          style: kHeading5Dark,
                        ),
                        Text(
                          "See all",
                          style: kSubtitleDark.copyWith(color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: const [
                        CardContinue(image: 'a'),
                        CardContinue(image: 'b'),
                        CardContinue(image: 'c'),
                        CardContinue(image: 'd'),
                        CardContinue(image: 'e'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Update",
                          style: kHeading5Dark,
                        ),
                        Text(
                          "See all",
                          style: kSubtitleDark.copyWith(color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CardNewUpdate(image: "1"),
                      CardNewUpdate(image: "2"),
                      CardNewUpdate(image: "3"),
                      CardNewUpdate(image: "4"),
                      CardNewUpdate(image: "5"),
                      CardNewUpdate(image: "6"),
                      CardNewUpdate(image: "7"),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavigatoinMain(),
    );
  }
}
