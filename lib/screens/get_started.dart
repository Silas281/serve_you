import 'package:flutter/material.dart';
import 'package:serve_you/screens/login_screen.dart';
import 'package:serve_you/screens/signup_screen.dart';

import '../constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.blue,
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            //width: 100.0,
            //color: AppColors.purple,

            child: const Image(
              height: double.infinity,
              image: AssetImage(
                  "../../assets/images/person2-removebg-preview.png"),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Column(
                      children: [
                        Text(
                          "All The Services You Need, Right At Your fingertips",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lato(
                            fontSize: 35,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "From cleaning to Construction, plumbing, software dev, we ve got you covered",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            )
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: AppColors.purple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 15,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            )),
                          },
                          child: Text(
                            "Already have an account? Login",
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: AppColors.purple,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
