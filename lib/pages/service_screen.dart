import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surabaya_tourism/model/motivation.dart';
import 'package:surabaya_tourism/model/service.dart';
import 'package:surabaya_tourism/routes/route_names.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({super.key});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  var service = Service(
    lingkungan: 0,
    infrastruktur: 0,
    fasilitas: 0,
    akomodasi: 0,
  );

  late Motivation motivation;

  @override
  void didChangeDependencies() {
    motivation = Get.arguments as Motivation;
    super.didChangeDependencies();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Layanan",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff2F80ED),
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lingkungan",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff828282),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: service.lingkungan,
                                    onChanged: (value) {
                                      setState(() {
                                        service.lingkungan = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Ya",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 0,
                                    groupValue: service.lingkungan,
                                    onChanged: (value) {
                                      setState(() {
                                        service.lingkungan = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Tidak",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Apakah Anda memperhatikan kebersihan dan keindahan lingkungan sekitar tempat wisata?",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff828282),
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Infrastruktur",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff828282),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: service.infrastruktur,
                                    onChanged: (value) {
                                      setState(() {
                                        service.infrastruktur = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Ya",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 0,
                                    groupValue: service.infrastruktur,
                                    onChanged: (value) {
                                      setState(() {
                                        service.infrastruktur = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Tidak",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Apakah Anda memperhatikan kualitas infrastruktur tempat wisata seperti jalan, bangunan, dan lain-lain?",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff828282),
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fasilitas",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff828282),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: service.fasilitas,
                                    onChanged: (value) {
                                      setState(() {
                                        service.fasilitas = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Ya",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 0,
                                    groupValue: service.fasilitas,
                                    onChanged: (value) {
                                      setState(() {
                                        service.fasilitas = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Tidak",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Apakah Anda memperhatikan fasilitas yang ada di tempat wisata seperti toilet, tempat makan, dan lain-lain?",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff828282),
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              )
                            ],
                          )),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Akomodasi",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color(0xff828282),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Row(
                                children: [
                                  Radio(
                                    value: 1,
                                    groupValue: service.akomodasi,
                                    onChanged: (value) {
                                      setState(() {
                                        service.akomodasi = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Ya",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: 0,
                                    groupValue: service.akomodasi,
                                    onChanged: (value) {
                                      setState(() {
                                        service.akomodasi = value as int;
                                      });
                                    },
                                    activeColor: const Color(0xff2F80ED),
                                  ),
                                  Text(
                                    "Tidak",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color(0xff333333),
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Apakah Anda memperhatikan kualitas akomodasi tempat wisata seperti hotel, penginapan, dan lain-lain?",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: const Color(0xff828282),
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width * -0.28,
              child: Transform.rotate(
                angle: -1.14 / 4,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: const BoxDecoration(
                    color: Color(0xff306FC6),
                    // create rounded
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              )),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 20),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.11,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          Positioned(
              left: MediaQuery.of(context).size.width * 0.045,
              top: MediaQuery.of(context).size.height * 0.032,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
              )),
          Container(
            //set on the bottom
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.9,
            ),
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "2 of 3",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteName.aktivitas, arguments: {
                      'motivation': motivation,
                      'service': service
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 85, vertical: 10),
                    backgroundColor: const Color(0xff2F80ED),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
