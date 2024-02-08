import 'package:flutter/material.dart';
import 'package:serve_you/constants/colors.dart';
//import 'package:serve_you/constants/colors.dart';
import 'package:serve_you/screens/widgets/button_widget.dart';

@override
Widget onBoardingPage(
  PageController controller,
  int index,
  BuildContext context, {
  String imageUrl = "",
  String titleText = "",
  String contentText = "",
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: Image(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              titleText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              contentText,
              style: const TextStyle(fontSize: 18, color: Colors.black54),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        buttonWidget(
          'Next',
          AppColors.purple,
          controller,
          index,
          context,
        ),
      ],
    ),
  );
}
