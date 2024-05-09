import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sibektar/presentation/data%20kaporlap/detail.dart';

import 'daftar_penutup_kaki.dart';

class DaftarPenutupBadan extends StatefulWidget {
  final XFile file;
  final String foto,
      nama,
      tempatLahir,
      tanggalLahir,
      noAkademi,
      pangkat,
      jenisKelamin,
      ttBB,
      email,
      password;

  const DaftarPenutupBadan(
      {super.key,
      required this.file,
      required this.foto,
      required this.nama,
      required this.tempatLahir,
      required this.tanggalLahir,
      required this.noAkademi,
      required this.pangkat,
      required this.jenisKelamin,
      required this.ttBB,
      required this.email,
      required this.password});

  @override
  State<DaftarPenutupBadan> createState() => _DaftarPenutupBadanState();
}

class _DaftarPenutupBadanState extends State<DaftarPenutupBadan> {
  String valPDL = 'K';
  List ukuran_PDL = ['K', 'S', 'B', 'EB'];

  String valPDH = 'S (165-175 cm) (60-70 kg)';
  List ukuran_PDH = [
    'S (165-175 cm) (60-70 kg)',
    'M (175-180 cm) (70-80 kg)',
    'XL (180-190 cm) (80-90 kg)',
  ];

  String valPORAL = 'K';
  List ukuran_PORAL = ['K', 'S', 'B', 'EB'];

  String valPDU = 'S (165-175 cm) (60-70 kg)';
  List ukuran_PDU = [
    'S (165-175 cm) (60-70 kg)',
    'M (175-180 cm) (70-80 kg)',
    'XL (180-190 cm) (80-90 kg)',
  ];

  String valPDPS = 'S (165-175 cm) (60-70 kg)';
  List ukuran_PDPS = [
    'S (165-175 cm) (60-70 kg)',
    'M (175-180 cm) (70-80 kg)',
    'XL (180-190 cm) (80-90 kg)',
  ];

  String valPDPM = 'S (165-175 cm) (60-70 kg)';
  List ukuran_PDPM = [
    'S (165-175 cm) (60-70 kg)',
    'M (175-180 cm) (70-80 kg)',
    'XL (180-190 cm) (80-90 kg)',
  ];
  String valPIYAMA = 'K';
  List ukuran_PIYAMA = ['K', 'S', 'B', 'EB'];
  String valTRAININGPORAL = 'K';
  List ukuran_TRAININGPORAL = ['K', 'S', 'B', 'EB'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutup Badan'),
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, top: 0, right: 20),
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView(
          children: [
            // Image.asset(
            //   'assets/logo-AAL-no-bg.png',
            //   height: 200,
            // ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/badan-pdl.jpg')),
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valPDL,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valPDL = value.toString();
                            });
                          },
                          items: ukuran_PDL
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/badan-pdh.jpg')),
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valPDH,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valPDH = value.toString();
                            });
                          },
                          items: ukuran_PDH
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/badan-poral.jpg')),
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valPORAL,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valPORAL = value.toString();
                            });
                          },
                          items: ukuran_PORAL
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/badan-pdu.jpg')),
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valPDU,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valPDU = value.toString();
                            });
                          },
                          items: ukuran_PDU
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/badan-pdps.jpg')),
                            Positioned(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  'PDPS',
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valPDPS,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valPDPS = value.toString();
                            });
                          },
                          items: ukuran_PDPS
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/badan-pdpm.jpg')),
                            Positioned(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  'PDPM',
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valPDPM,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valPDPM = value.toString();
                            });
                          },
                          items: ukuran_PDPM
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/badan-piyama.jpg')),
                            Positioned(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  'PIYAMA',
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valPIYAMA,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valPIYAMA = value.toString();
                            });
                          },
                          items: ukuran_PIYAMA
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
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
                                    'assets/badan-training poral.jpg')),
                            Positioned(
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  'Training Poral',
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
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButton(
                          value: valTRAININGPORAL,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valTRAININGPORAL = value.toString();
                            });
                          },
                          items: ukuran_TRAININGPORAL
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 2),
                            color: Colors.blue.withOpacity(0.2),
                            blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DaftarPenutupKaki(
                                file: widget.file,
                                foto: widget.foto,
                                nama: widget.nama,
                                tempatLahir: widget.tempatLahir,
                                tanggalLahir: widget.tanggalLahir,
                                noAkademi: widget.noAkademi,
                                pangkat: widget.pangkat,
                                jenisKelamin: widget.jenisKelamin,
                                ttBB: widget.ttBB,
                                email: widget.email,
                                password: widget.password,
                                //
                                pdl: valPDL,
                                pdh: valPDH,
                                poral: valPORAL,
                                pdu: valPDU,
                                pdps: valPDPS,
                                pdpm: valPDPM,
                                piyama: valPIYAMA,
                                training_poral: valTRAININGPORAL),
                          ));
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 26,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
