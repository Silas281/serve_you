import "package:flutter/material.dart";

import 'package:dots_indicator/dots_indicator.dart';
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:serve_you/model/onboard_model.dart";

import "widgets/onboarding_page.dart";

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController controller = PageController(initialPage: 0);
    final index = ref.watch(onboardState);
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(alignment: Alignment.topCenter, children: [
          PageView(
              controller: controller,
              padEnds: true,
              clipBehavior: Clip.hardEdge,
              onPageChanged: (value) => {
                    //print(value),
                    ref.read(onboardState.notifier).state = value,
                  },
              children: [
                onBoardingPage(
                  controller,
                  index,
                  context,
                  imageUrl: "../../assets/images/QA_engineers.png",
                  titleText: "Welcome!",
                  contentText:
                      "Your go-to platform for connecting with trusted individuals offering a wide range of informal services tailored to your needs.",
                ),
                onBoardingPage(
                  controller,
                  index,
                  context,
                  imageUrl: "../../assets/images/undraw_heavy_box_agqi.png",
                  titleText: "Find Services Nearby",
                  contentText:
                      "Looking for help with household chores, tutoring sessions, pet sitting, or anything in between, our app makes it easy to discover local service providers.",
                ),
                onBoardingPage(
                  controller,
                  index,
                  context,
                  imageUrl:
                      "../../assets/images/undraw_Secure_server_re_8wsq.png",
                  titleText: "Safe and Secure",
                  contentText:
                      "Your safety and security are our top priorities. Rest assured that all service providers on our platform undergo thorough background checks and verification processes before joining.",
                ),
              ]),
          Positioned(
            //left: 150,
            bottom: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotsIndicator(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  dotsCount: 3,
                  position: index,
                  decorator: DotsDecorator(
                    size: const Size.square(9),
                    activeSize: const Size(20.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
