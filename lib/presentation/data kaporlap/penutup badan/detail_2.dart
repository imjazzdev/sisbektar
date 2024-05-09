import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class Detail2 extends StatefulWidget {
  final String kategori, tipe, gambar, ukuran;

  const Detail2(
      {super.key,
      required this.kategori,
      required this.tipe,
      required this.gambar,
      required this.ukuran});

  @override
  State<Detail2> createState() => _Detail2State();
}

class _Detail2State extends State<Detail2> {
  String valUkuran = 'S (165-175 cm) (60-70 kg)';
  List list_ukuran = [
    'S (165-175 cm) (60-70 kg)',
    'M (175-180 cm) (70-80 kg)',
    'XL (180-190 cm) (80-90 kg)',
  ];
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
                      style: TextStyle(fontSize: 20),
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
                        width: 300,
                        padding: EdgeInsets.only(left: 15, right: 15),
                        color: Colors.white,
                        child: DropdownButton(
                          value: valUkuran,
                          underline: SizedBox(),
                          focusColor: Colors.blue,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 18),
                          iconEnabledColor: Colors.blue,
                          isExpanded: true,
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
                          if (widget.tipe == 'PDH') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_pdh': valUkuran,
                            });
                            Utils.PB_PDH = valUkuran;
                          } else if (widget.tipe == 'PDU') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_pdu': valUkuran,
                            });
                            Utils.PB_PDU = valUkuran;
                          } else if (widget.tipe == 'PDPS') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_pdps': valUkuran,
                            });
                            Utils.PB_PDPS = valUkuran;
                          } else if (widget.tipe == 'PDPM') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pb_pdpm': valUkuran,
                            });
                            Utils.PB_PDPM = valUkuran;
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
