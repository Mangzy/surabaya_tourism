import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surabaya_tourism/routes/route_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff2F80ED), // Color(0xff2F80ED)
              Colors.black,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: MediaQuery.of(context).size.width * -0.1,
              bottom: MediaQuery.of(context).size.height * 0.2,
              child: Row(
                children: [
                  SizedBox(
                    width: 500,
                    child: Stack(
                      fit: StackFit.loose,
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.45,
                          backgroundImage: const AssetImage(
                            "assets/images/sby.png",
                          ),
                        ),
                        Positioned(
                          left: 200,
                          bottom: 50,
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.35,
                            backgroundImage: const AssetImage(
                              "assets/images/tugu.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Row(
                    children: [
                      Text(
                        "Explore Wisata Surabaya",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    children: [
                      Text(
                        "Tentukan Pilihan Wisata Anda\nDengan Mudah dan Cepat",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.55),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(RouteName.home);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
