import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serve_you/screens/login_screen.dart';

import '../constants/colors.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Column(
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
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.purple,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: AppColors.lightPurple,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create Account",
                    style: GoogleFonts.lato(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
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
                        prefixIcon: Icon(Icons.person_2_outlined),
                        labelText: 'Full Name'),
                  ),
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
                        labelText: 'Your email'),
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
                        labelText: 'Create password'),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        prefixIcon: Icon(Icons.lock_outlined),
                        labelText: 'Confirm password'),
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
                        "Register",
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
                        builder: (context) => const LoginScreen(),
                      )),
                    },
                    child: Text(
                      "Have an account already? login",
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
