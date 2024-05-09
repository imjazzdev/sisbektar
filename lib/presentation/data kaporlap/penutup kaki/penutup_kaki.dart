import 'package:flutter/material.dart';
import 'package:sibektar/presentation/data%20kaporlap/detail.dart';

import '../../../utils/utils.dart';

class PenutupKaki extends StatelessWidget {
  const PenutupKaki({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SISBEKTAR'),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, top: 0, right: 20),
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/logo-AAL-no-bg.png',
              height: 250,
            ),
            SizedBox(
              height: 30,
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
                            builder: (context) => Detail(
                              kategori: 'Penutup Kaki',
                              tipe: 'PDL',
                              gambar: 'assets/kaki-pdl.jpg',
                              ukuran: Utils.PK_PDL,
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
                              child: Image.asset('assets/kaki-pdl.jpg')),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'PDL',
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
                            builder: (context) => Detail(
                              kategori: 'Penutup Kaki',
                              tipe: 'PDH',
                              gambar: 'assets/kaki-pdh.jpg',
                              ukuran: Utils.PKP_PDH,
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
                              child: Image.asset('assets/kaki-pdh.jpg')),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'PDH',
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
                            builder: (context) => Detail(
                                kategori: 'Penutup Kaki',
                                tipe: 'PORAL',
                                gambar: 'assets/kaki-poral.jpg',
                                ukuran: Utils.PK_PORAL),
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
                                'assets/kaki-poral.jpg',
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'PORAL',
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
                            builder: (context) => Detail(
                                kategori: 'Penutup Kaki',
                                tipe: 'PDU',
                                gambar: 'assets/kaki-pdu.jpg',
                                ukuran: Utils.PKP_PDU),
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
                              child: Image.asset('assets/kaki-pdu.jpg')),
                          Positioned(
                            child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                'PDU',
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
          ],
        ),
      )),
    );
  }
}
