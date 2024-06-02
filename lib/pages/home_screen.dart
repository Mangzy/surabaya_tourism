import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surabaya_tourism/model/tourism_model.dart';
import 'package:surabaya_tourism/routes/route_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const tabs = [
      "History & Heritage",
      "Museum",
      "Religi",
      "Monumen & Landmark",
      "Outdoor and Nature",
      "Kampung Wisata",
      "City Park",
      "Pusat Perbelanjaan",
      "Pasar Tradisional",
      "Cagar Budaya",
      "Art & Culture",
      "Sport",
      "Kuliner",
      "Mice",
      "Family Activies",
    ];

    return Scaffold(
      body: Stack(
        children: [
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
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Container(
                padding: const EdgeInsets.only(right: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Destinasi Wisata",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2F80ED),
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Surabaya",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color(0xff828282),
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              DefaultTabController(
                length: tabs.length,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: TabBar(
                        isScrollable: true,
                        labelColor: const Color(0xff2F80ED),
                        unselectedLabelColor: const Color(0xff828282),
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                        tabs: tabs
                            .map((e) => Tab(
                                  text: e,
                                ))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.55,
                      child: TabBarView(
                        children: tabs.map((tab) {
                          List<Wisata> filteredWisata = daftarWisataSurabaya
                              .where((wisata) => wisata.kategori.contains(tab))
                              .toList();
                          return PageView.builder(
                            padEnds: false,
                            itemCount: filteredWisata.length,
                            controller: PageController(viewportFraction: 0.5),
                            onPageChanged: (int index) => setState(() {
                              index = index;
                            }),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.toNamed(RouteName.detail,
                                      arguments: filteredWisata[index]);
                                },
                                child: Transform.scale(
                                  scale: index == index ? 1 : 0.9,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.40,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 5,
                                                blurRadius: 5,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                filteredWisata[index].image,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            filteredWisata[index].nama,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff2F80ED),
                                              fontFamily: GoogleFonts.roboto()
                                                  .fontFamily,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.motivation);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2F80ED),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  "Wisata Untukmu",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
