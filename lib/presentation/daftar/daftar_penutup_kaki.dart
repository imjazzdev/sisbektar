import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sibektar/presentation/daftar/daftar_penutup_kepala.dart';
import 'package:sibektar/presentation/data%20kaporlap/detail.dart';

class DaftarPenutupKaki extends StatefulWidget {
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

  const DaftarPenutupKaki({
    super.key,
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
  });

  @override
  State<DaftarPenutupKaki> createState() => _DaftarPenutupKakiState();
}

class _DaftarPenutupKakiState extends State<DaftarPenutupKaki> {
  var pdl = TextEditingController();
  var pdh = TextEditingController();
  var poral = TextEditingController();
  var pdu = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutup Kaki'),
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
                                  child: Image.asset('assets/kaki-pdl.jpg')),
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
                                  child: Image.asset('assets/kaki-pdh.jpg')),
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
                                  child: Image.asset('assets/kaki-poral.jpg')),
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
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: poral,
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
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset('assets/kaki-pdu.jpg')),
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
              ],
            ),
            SizedBox(
              height: 30,
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
                      if (pdh.text != '' &&
                          pdl.text != '' &&
                          poral.text != '' &&
                          pdu.text != '') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DaftarPenutupKepala(
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
                                pdl: widget.pdl,
                                pdh: widget.pdh,
                                poral: widget.poral,
                                pdu: widget.pdu,
                                pdps: widget.pdps,
                                pdpm: widget.pdpm,
                                piyama: widget.piyama,
                                training_poral: widget.training_poral,
                                //
                                kakipdl: pdl.text,
                                kakipdh: pdh.text,
                                kakiporal: poral.text,
                                kakipdu: pdu.text,
                              ),
                            ));
                      } else {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.warning,
                          animType: AnimType.rightSlide,
                          title: 'Data belum lengkap',
                          btnOkOnPress: () {},
                        ).show();
                      }
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 26,
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
