import 'package:flutter/material.dart';
import 'package:sibektar/presentation/data%20kaporlap/aksesoris/detail.dart';
import 'package:sibektar/presentation/data%20kaporlap/detail.dart';

import '../../../utils/utils.dart';

class Aksesoris extends StatelessWidget {
  const Aksesoris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SISBEKTAR'),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
          left: 20,
          top: 0,
          right: 20,
        ),
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView(
          padding: EdgeInsets.only(bottom: 15),
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/logo-AAL-no-bg.png',
              height: 250,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailAksesoris(
                              kategori: 'Aksesoris',
                              tipe: 'Kadga / Ponyard',
                              gambar: 'assets/aksesoris-kadga ponyard.jpg',
                              ukuran: Utils.AKS_KATGA,
                            ),
                          ));
                    },
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  'assets/aksesoris-kadga ponyard.jpg')),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Kadga /\nPonyard',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailAksesoris(
                              kategori: 'Aksesoris',
                              tipe: 'Kaos Kaki',
                              gambar: 'assets/aksesoris-kaos kaki.jpg',
                              ukuran: Utils.AKS_KAOS_KAKI,
                            ),
                          ));
                    },
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  'assets/aksesoris-kaos kaki.jpg')),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Kaos Kaki',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailAksesoris(
                              kategori: 'Aksesoris',
                              tipe: 'Cevron',
                              gambar: 'assets/aksesoris-cevron.jpg',
                              ukuran: Utils.AKS_CEVRON,
                            ),
                          ));
                    },
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/aksesoris-cevron.jpg',
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Cevron',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailAksesoris(
                              kategori: 'Aksesoris',
                              tipe: 'Sabuk PDH, PDU, PDL, PDPM',
                              gambar: 'assets/aksesoris-sabuk.jpg',
                              ukuran: Utils.AKS_SABUK,
                            ),
                          ));
                    },
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/aksesoris-sabuk.jpg')),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Sabuk',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailAksesoris(
                              kategori: 'Aksesoris',
                              tipe: 'Name Tag',
                              gambar: 'assets/aksesoris-nametag.jpg',
                              ukuran: Utils.AKS_NAMETAG,
                            ),
                          ));
                    },
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/aksesoris-nametag.jpg',
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Name Tag',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailAksesoris(
                              kategori: 'Aksesoris',
                              tipe: 'Evolet',
                              gambar: 'assets/aksesoris-evolet.png',
                              ukuran: Utils.AKS_EVOLET,
                            ),
                          ));
                    },
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child:
                                  Image.asset('assets/aksesoris-evolet.png')),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'Evolet',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(20))),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // InkWell(
            //   onTap: () {
            //     // Navigator.push(
            //     //     context,
            //     //     MaterialPageRoute(
            //     //       builder: (context) => Detail(
            //     //         kategori: 'Aksesoris',
            //     //         tipe: 'Name Tag',
            //     //         gambar: 'assets/kaki-pdu.jpg',
            //     //       ),
            //     //     ));
            //   },
            //   child: Align(
            //     alignment: Alignment.center,
            //     child: Container(
            //       height: 160,
            //       width: 160,
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: Colors.white),
            //       child: Stack(
            //         alignment: Alignment.bottomCenter,
            //         children: [
            //           ClipRRect(
            //               borderRadius: BorderRadius.circular(20),
            //               child: Image.asset('assets/aksesoris-nametag.jpg')),
            //           Positioned(
            //             child: Container(
            //               height: 50,
            //               alignment: Alignment.center,
            //               child: Text(
            //                 'Name Tag',
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white),
            //               ),
            //               decoration: BoxDecoration(
            //                   color: Colors.black.withOpacity(0.8),
            //                   borderRadius: BorderRadius.vertical(
            //                       bottom: Radius.circular(20))),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      )),
    );
  }
}
