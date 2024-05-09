import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sibektar/presentation/data%20kaporlap/detail.dart';
import 'package:sibektar/presentation/signin.dart';

class DaftarPenutupKepala extends StatefulWidget {
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

  final String pdl, pdh, poral, pdu, pdps, pdpm, piyama, training_poral;
  final String kakipdl, kakipdh, kakiporal, kakipdu;

  const DaftarPenutupKepala(
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
      required this.password,
      required this.pdl,
      required this.pdh,
      required this.poral,
      required this.pdu,
      required this.pdps,
      required this.pdpm,
      required this.piyama,
      required this.training_poral,
      required this.kakipdl,
      required this.kakipdh,
      required this.kakiporal,
      required this.kakipdu});

  @override
  State<DaftarPenutupKepala> createState() => _DaftarPenutupKepalaState();
}

class _DaftarPenutupKepalaState extends State<DaftarPenutupKepala> {
  String imgURL = '';
  var baret = TextEditingController();
  var pdh = TextEditingController();
  var pdu = TextEditingController();
  var pdl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutup Kepala'),
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
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child:
                                      Image.asset('assets/kepala-baret.jpg')),
                            ),
                          );
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
                                      Image.asset('assets/kepala-baret.jpg')),
                              Positioned(
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Baret',
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
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: baret,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Isi Ukuran',
                            fillColor: Colors.white),
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
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                      'assets/kepala-topi pdh.jpg')),
                            ),
                          );
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
                                      'assets/kepala-topi pdh.jpg')),
                              Positioned(
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Topi Pet PDH',
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
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: pdh,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Isi Ukuran',
                            fillColor: Colors.white),
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
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                      'assets/kepala-topi pdu.jpg')),
                            ),
                          );
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
                                    'assets/kepala-topi pdu.jpg',
                                    fit: BoxFit.cover,
                                  )),
                              Positioned(
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Topi Pet PDU',
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
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: pdu,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Isi Ukuran',
                            fillColor: Colors.white),
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
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                      'assets/kepala-topi rimba.jpg')),
                            ),
                          );
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
                                      'assets/kepala-topi rimba.jpg')),
                              Positioned(
                                child: Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Topi Pet PDL &\nTopi Rimba',
                                    textAlign: TextAlign.center,
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
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: pdl,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Isi Ukuran',
                            fillColor: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                addData();
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  title: 'Data berhasil disimpan',
                  desc: 'Kembali ke halaman Login?',
                  btnOkOnPress: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ),
                        (route) => false);
                  },
                ).show();
              },
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(1, 2),
                            color: Colors.blue.withOpacity(0.2),
                            blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Shimmer.fromColors(
                        baseColor: Colors.white,
                        highlightColor: Colors.black,
                        child: Text(
                          'Simpan',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Future addData() async {
    // CREATE DATA USER
    // FirebaseAuth.instance.createUserWithEmailAndPassword(
    //     email: widget.email, password: widget.password);
    final doc =
        FirebaseFirestore.instance.collection('USER').doc(widget.noAkademi);

    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('images/');
    Reference referenceImageToUpload =
        referenceDirImages.child('${widget.noAkademi}');
    try {
      File? image;
      image = File(widget.file!.path);

      await referenceImageToUpload.putFile(
          image!, SettableMetadata(contentType: 'image/jpeg'));
      setState(() {});
      imgURL = await referenceImageToUpload.getDownloadURL();
      print('LINK GAMBAR : $imgURL');
    } catch (e) {
      print('ERROR IMAGE PICKER : $e');
    }

    final user = DaftarUser(
        foto: imgURL,
        nama: widget.nama,
        tempatLahir: widget.tempatLahir,
        tanggalLahir: widget.tanggalLahir,
        noAkademi: widget.noAkademi,
        pangkat: widget.pangkat,
        jenisKelamin: widget.jenisKelamin,
        ttBB: widget.ttBB,
        email: widget.email,
        password: widget.password);
    final json = user.toJson();
    await doc.set(json);

    // CREATE DATA KAPORLAP
    final docKaporlap =
        FirebaseFirestore.instance.collection('KAPORLAP').doc(widget.noAkademi);
    final kaporlap = DaftarKaporlap(
        badanpdl: widget.pdl,
        badanpdh: widget.pdh,
        badanporal: widget.poral,
        badanpdu: widget.pdu,
        badanpdps: widget.pdps,
        badanpdpm: widget.pdpm,
        badanpiyama: widget.piyama,
        badantrainingporal: widget.training_poral,
        kakipdl: widget.kakipdl,
        kakipdh: widget.kakipdh,
        kakiporal: widget.kakiporal,
        kakipdu: widget.kakipdu,
        kepalabaret: baret.text,
        kepalapdh: pdh.text,
        kepalapdu: pdu.text,
        kepalapdl: pdl.text);
    final jsonn = kaporlap.toJson();
    await docKaporlap.set(jsonn);
  }
}

class DaftarUser {
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

  DaftarUser(
      {required this.foto,
      required this.nama,
      required this.tempatLahir,
      required this.tanggalLahir,
      required this.noAkademi,
      required this.pangkat,
      required this.jenisKelamin,
      required this.ttBB,
      required this.email,
      required this.password});

  Map<String, dynamic> toJson() => {
        'foto': foto,
        'nama': nama,
        'tempat_lahir': tempatLahir,
        'tanggal_lahir': tanggalLahir,
        'no_akademik': noAkademi,
        'pangkat': pangkat,
        'jenis_kelamin': jenisKelamin,
        'tt_bb': ttBB,
        'email': email,
        'password': password
      };
}

class DaftarKaporlap {
  final String badanpdl,
      badanpdh,
      badanporal,
      badanpdu,
      badanpdps,
      badanpdpm,
      badanpiyama,
      badantrainingporal;
  final String kakipdl, kakipdh, kakiporal, kakipdu;
  final String kepalabaret, kepalapdh, kepalapdu, kepalapdl;

  DaftarKaporlap(
      {required this.badanpdl,
      required this.badanpdh,
      required this.badanporal,
      required this.badanpdu,
      required this.badanpdps,
      required this.badanpdpm,
      required this.badanpiyama,
      required this.badantrainingporal,
      required this.kakipdl,
      required this.kakipdh,
      required this.kakiporal,
      required this.kakipdu,
      required this.kepalabaret,
      required this.kepalapdh,
      required this.kepalapdu,
      required this.kepalapdl});

  Map<String, dynamic> toJson() => {
        //badan
        'pb_pdl': badanpdl,
        'pb_pdh': badanpdh,
        'pb_poral': badanporal,
        'pb_pdu': badanpdu,
        'pb_pdps': badanpdps,
        'pb_pdpm': badanpdpm,
        'pb_piyama': badanpiyama,
        'pb_training_poral': badantrainingporal,
        //kaki
        'pk_pdl': kakipdl,
        'pk_pdh': kakipdh,
        'pk_poral': kakiporal,
        'pk_pdu': kakipdu,
        //kepala
        'pkp_baret': kepalabaret,
        'pkp_pdh': kepalapdh,
        'pkp_pdu': kepalapdu,
        'pkp_pdl': kepalapdl,
        //aksesoris
        'aks_katga': '1',
        'aks_cevron': '1',
        'aks_evolet': '1',
        'aks_kaos_kaki': '2',
        'aks_nametag': '2',
        'aks_sabuk': '1'
      };
}
