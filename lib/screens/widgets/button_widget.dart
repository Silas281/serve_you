import 'package:flutter/material.dart';
import 'package:serve_you/screens/get_started.dart';

Widget buttonWidget(
  String text,
  Color color,
  PageController controller,
  int index,
  BuildContext context,
) {
  return InkWell(
    onTap: () => {
      //print("index: ${index.toString()}"),
      if (index < 2)
        {
          //controller.jumpToPage(index)
          controller.animateToPage(
            index + 1,
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          )
        }
      else
        {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => const GetStarted()))
        }
    },
    child: Container(
      //margin: const EdgeInsets.only(top: 40.0),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ],
      ),
    ),
  );
}
