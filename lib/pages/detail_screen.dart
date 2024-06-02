import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:surabaya_tourism/model/tourism_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Wisata wisata;

  @override
  void didChangeDependencies() {
    wisata = Get.arguments;
    super.didChangeDependencies();
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
                  height: MediaQuery.of(context).size.height * 0.20,
                ),
                Container(
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
                          wisata.nama,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff828282),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      // add image
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(wisata.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          wisata.deskripsi,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff828282),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Kategori: ${wisata.kategori.join(', ')}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff828282),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Push Factor : \n${wisata.motivation.join('\n ')}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff828282),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Pull Factor : \n${wisata.service.join('\n ')}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff828282),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Aktivitas Wisatawan : \n${wisata.aktivitas.join('\n ')}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xff828282),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
        ],
      ),
    );
  }
}
