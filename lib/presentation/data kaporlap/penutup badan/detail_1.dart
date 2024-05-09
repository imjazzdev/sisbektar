import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class Detail1 extends StatefulWidget {
  final String kategori, tipe, gambar, ukuran;

  const Detail1(
      {super.key,
      required this.kategori,
      required this.tipe,
      required this.gambar,
      required this.ukuran});

  @override
  State<Detail1> createState() => _Detail1State();
}

class _Detail1State extends State<Detail1> {
  String valUkuran = 'K';
  List list_ukuran = ['K', 'S', 'B', 'EB'];
  @override
  void initState() {
    valUkuran = widget.ukuran;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SISBEKTAR')),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.center,
                    child: Text(
                      '${widget.kategori} (${widget.tipe})',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
            Expanded(
                flex: 3,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.gambar,
                      fit: BoxFit.cover,
                    ))),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Isi Ukuran',
                      style: TextStyle(fontSize: 20),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: 200,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        color: Colors.white,
                        child: DropdownButton(
                          value: valUkuran,
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
                          underline: SizedBox(),
                          onChanged: (value) {
                            setState(() {
                              valUkuran = value.toString();
                            });
                          },
                          items: list_ukuran
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (widget.tipe == 'PDL') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_pdl': valUkuran,
                            });
                            Utils.PB_PDL = valUkuran;
                          } else if (widget.tipe == 'PORAL') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_poral': valUkuran,
                            });
                            Utils.PB_PORAL = valUkuran;
                          } else if (widget.tipe == 'PIYAMA') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_piyama': valUkuran,
                            });
                            Utils.PB_PIYAMA = valUkuran;
                          } else if (widget.tipe == 'TRAINING PORAL') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_training_poral': valUkuran,
                            });
                            Utils.PB_TRAINING_PORAL = valUkuran;
                          }
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.success,
                            animType: AnimType.rightSlide,
                            title: 'Data berhasil disimpan',
                            btnOkOnPress: () {
                              Navigator.pop(context);
                            },
                          ).show();
                        },
                        child: Text('Simpan'))
                  ],
                ))
            // Expanded(child: child)
          ],
        ),
      ),
    );
  }
}
