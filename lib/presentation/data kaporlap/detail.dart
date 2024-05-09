import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sibektar/utils/utils.dart';

class Detail extends StatefulWidget {
  final String kategori, tipe, gambar, ukuran;

  const Detail({
    super.key,
    required this.kategori,
    required this.tipe,
    required this.gambar,
    required this.ukuran,
  });

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  var ukuran = TextEditingController();
  @override
  void initState() {
    ukuran.text = widget.ukuran;
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.gambar,
                        fit: BoxFit.cover,
                        width: double.maxFinite,
                      )),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Isi Ukuran',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 150,
                      child: TextField(
                        controller: ukuran,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (widget.kategori == 'Penutup Kaki' &&
                              widget.tipe == 'PDL') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pk_pdl': ukuran.text,
                            });

                            Utils.PK_PDL = ukuran.text;
                          } else if (widget.kategori == 'Penutup Kaki' &&
                              widget.tipe == 'PDH') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pk_pdh': ukuran.text,
                            });
                            Utils.PK_PDH = ukuran.text;
                          } else if (widget.kategori == 'Penutup Kaki' &&
                              widget.tipe == 'PORAL') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pk_poral': ukuran.text,
                            });
                            Utils.PK_PORAL = ukuran.text;
                          } else if (widget.kategori == 'Penutup Kaki' &&
                              widget.tipe == 'PDU') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pk_pdu': ukuran.text,
                            });
                            Utils.PK_PDU = ukuran.text;
                          } else if (widget.kategori == 'Penutup Kepala' &&
                              widget.tipe == 'Baret') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pkp_baret': ukuran.text,
                            });
                            Utils.PKP_BARET = ukuran.text;
                          } else if (widget.kategori == 'Penutup Kepala' &&
                              widget.tipe == 'Topi Pet PDH') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pkp_pdh': ukuran.text,
                            });
                            Utils.PKP_PDH = ukuran.text;
                          } else if (widget.kategori == 'Penutup Kepala' &&
                              widget.tipe == 'Topi Pet PDU') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pkp_pdu': ukuran.text,
                            });
                            Utils.PKP_PDU = ukuran.text;
                          } else if (widget.kategori == 'Penutup Kepala' &&
                              widget.tipe == 'Topi Pet PDL & Topi Rimba') {
                            FirebaseFirestore.instance
                                .collection('KAPORLAP')
                                .doc(Utils.USER_NO_AKADEMIK)
                                .update({
                              'pkp_pdl': ukuran.text,
                            });
                            Utils.PKP_PDL = ukuran.text;
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
