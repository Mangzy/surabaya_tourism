import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surabaya_tourism/model/motivation.dart';
import 'package:surabaya_tourism/routes/route_names.dart';

class MotivationScreen extends StatefulWidget {
  const MotivationScreen({super.key});

  @override
  State<MotivationScreen> createState() => _MotivationScreenState();
}

class _MotivationScreenState extends State<MotivationScreen> {
  var motivation = Motivation(
    escape: 0,
    relaxation: 0,
    play: 0,
    strenghthening: 0,
    prestige: 0,
    socialInteraction: 0,
    romance: 0,
    educationalOppurtunity: 0,
    selfFullfillment: 0,
    wishFullfillment: 0,
  );

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
                          "Motivasi",
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
                                "Escape",
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
                                    groupValue: motivation.escape,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.escape = value as int;
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
                                    groupValue: motivation.escape,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.escape = value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk menghilangkan kepenatan, stres, atau kejenuhan?",
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
                                "Relaxation",
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
                                    groupValue: motivation.relaxation,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.relaxation = value as int;
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
                                    groupValue: motivation.relaxation,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.relaxation = value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk bersantai dan melepas penat?",
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
                                "Play",
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
                                    groupValue: motivation.play,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.play = value as int;
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
                                    groupValue: motivation.play,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.play = value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk bermain dan bersenang-senang?",
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
                                "Strenghthening Family Bonds",
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
                                    groupValue: motivation.strenghthening,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.strenghthening =
                                            value as int;
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
                                    groupValue: motivation.strenghthening,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.strenghthening =
                                            value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk mempererat hubungan keluarga?",
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
                                "Prestige",
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
                                    groupValue: motivation.prestige,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.prestige = value as int;
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
                                    groupValue: motivation.prestige,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.prestige = value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk menambah prestise atau gengsi?",
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
                                "Social Interaction",
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
                                    groupValue: motivation.socialInteraction,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.socialInteraction =
                                            value as int;
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
                                    groupValue: motivation.socialInteraction,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.socialInteraction =
                                            value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk berinteraksi sosial?",
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
                                "Romance",
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
                                    groupValue: motivation.romance,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.romance = value as int;
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
                                    groupValue: motivation.romance,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.romance = value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk merayakan momen romantis?",
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
                                "Educational Opportunity",
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
                                    groupValue:
                                        motivation.educationalOppurtunity,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.educationalOppurtunity =
                                            value as int;
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
                                    groupValue:
                                        motivation.educationalOppurtunity,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.educationalOppurtunity =
                                            value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk mendapatkan pengalaman belajar?",
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
                                "Self-Fulfillment",
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
                                    groupValue: motivation.selfFullfillment,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.selfFullfillment =
                                            value as int;
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
                                    groupValue: motivation.selfFullfillment,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.selfFullfillment =
                                            value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk memenuhi kebutuhan diri?",
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
                                "Wish Fulfilment",
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
                                    groupValue: motivation.wishFullfillment,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.wishFullfillment =
                                            value as int;
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
                                    groupValue: motivation.wishFullfillment,
                                    onChanged: (value) {
                                      setState(() {
                                        motivation.wishFullfillment =
                                            value as int;
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
                                "Apakah Anda ingin mengunjungi tempat wisata untuk memenuhi keinginan?",
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
                  "1 of 3",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteName.service, arguments: motivation);
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
