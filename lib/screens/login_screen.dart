import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:serve_you/screens/home_screen.dart";
import "package:serve_you/screens/signup_screen.dart";

import "../constants/colors.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //padding: const EdgeInsets.all(8.0),
                width: 80,
                height: 30.0,
                alignment: const Alignment(0, 10),
                decoration: const BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(100),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(100),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back,",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          color: AppColors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "We miss You!",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          //color: AppColors.lightPurple,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage('../../assets/images/service2.png'),
                        //width: 150,
                        //height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 30.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: 'Enter your email'),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        prefixIcon: Icon(Icons.lock_outline),
                        labelText: 'Enter your password'),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      )
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(
                        "Login",
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
                        builder: (context) => SignUpScreen(),
                      )),
                    },
                    child: Text(
                      "Don't have an account? Register",
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: AppColors.purple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
