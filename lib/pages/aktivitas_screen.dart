import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surabaya_tourism/model/aktivitas.dart';
import 'package:surabaya_tourism/model/motivation.dart';
import 'package:surabaya_tourism/model/service.dart';
import 'package:surabaya_tourism/routes/route_names.dart';
import 'package:http/http.dart' as http;

class AktivitasScreen extends StatefulWidget {
  const AktivitasScreen({super.key});

  @override
  State<AktivitasScreen> createState() => _AktivitasScreenState();
}

class _AktivitasScreenState extends State<AktivitasScreen> {
  var aktivitas = Aktivitas(
    belajar: 0,
    berbelanja: 0,
    beribadah: 0,
    berinteraksiDenganSatwa: 0,
    berkemah: 0,
    berolahraga: 0,
    makanBersama: 0,
    melihatPemandangan: 0,
    mengambilFoto: 0,
  );

  late Motivation motivation;
  late Service service;
  late List<dynamic> wisataList = [];

  bool isLoading = false;

  @override
  void didChangeDependencies() {
    var arguments = Get.arguments;
    motivation = arguments['motivation'] as Motivation;
    service = arguments['service'] as Service;
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

  Future<void> postWisata() async {
    // const apiUrl =
    //     "https://recomendation-tourism-hjh52yug5q-et.a.run.app/predict";

    const apiUrl = "http://10.0.2.2:5000/predict";

    var response = await http.post(Uri.parse(apiUrl),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "Escape": motivation.escape,
          "Relaxation": motivation.relaxation,
          "Play": motivation.play,
          "Strenghthening family bonds": motivation.strenghthening,
          "Prestige": motivation.prestige,
          "Social Interaction": motivation.socialInteraction,
          "Romance": motivation.romance,
          "Educational Opportunity": motivation.educationalOppurtunity,
          "Self-fulfilment": motivation.selfFullfillment,
          "Wish-fulfiment": motivation.wishFullfillment,
          "Lingkungan": service.lingkungan,
          "Infrastruktur": service.infrastruktur,
          "Fasilitas": service.fasilitas,
          "Akomodasi": service.akomodasi,
          "Makan Bersama": aktivitas.makanBersama,
          "Berolahraga": aktivitas.berolahraga,
          "Belajar": aktivitas.belajar,
          "Berinteraksi dengan satwa": aktivitas.berinteraksiDenganSatwa,
          "Mengambil Foto": aktivitas.mengambilFoto,
          "Beribadah": aktivitas.beribadah,
          "Berkemah": aktivitas.berkemah,
          "Melihat Pemandangan": aktivitas.melihatPemandangan,
          "Berbelanja": aktivitas.berbelanja,
        }));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      setState(() {
        wisataList = data;
        // ignore: avoid_print
        print(wisataList);
      });
    } else {
      try {
        throw Exception('Failed to load data');
      } catch (e) {
        Get.snackbar(
          "Error",
          e.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
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
                          "Aktivitas Wisatawan",
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
                                "Pilih Aktivitas Wisata yang anda inginkan",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: const Color(0xff828282),
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.03),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.belajar == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.belajar =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Belajar",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.berbelanja == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.berbelanja =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Berbelanja",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.beribadah == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.beribadah =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Beribadah",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value:
                                          aktivitas.berinteraksiDenganSatwa ==
                                              1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.berinteraksiDenganSatwa =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Berinteraksi dengan Satwa",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.berkemah == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.berkemah =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Berkemah",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.berolahraga == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.berolahraga =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Berolahraga",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.makanBersama == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.makanBersama =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Makan Bersama",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.melihatPemandangan == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.melihatPemandangan =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Melihat Pemandangan",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: Checkbox(
                                      value: aktivitas.mengambilFoto == 1,
                                      onChanged: (value) {
                                        setState(() {
                                          aktivitas.mengambilFoto =
                                              value != null && value ? 1 : 0;
                                        });
                                      },
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                              MaterialState.disabled)) {
                                            return const BorderSide(
                                              color: Colors.grey,
                                            );
                                          }
                                          return const BorderSide(
                                            color: Colors.grey,
                                          );
                                        },
                                      ),
                                      checkColor: const Color(0xff2F80ED),
                                      activeColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Mengambil Foto",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily:
                                          GoogleFonts.roboto().fontFamily,
                                    ),
                                  ),
                                ],
                              ),
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
                  "3 of 3",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    setState(() {
                      isLoading = true;
                    });
                    await postWisata();
                    setState(() {
                      isLoading = false;
                    });
                    Get.toNamed(RouteName.hasil, arguments: {
                      'wisataList': wisataList,
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
                  child: !isLoading
                      ? Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        )
                      // : buat loading kecil
                      : const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
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
