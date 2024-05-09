import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sibektar/presentation/home.dart';
import 'package:sibektar/utils/utils.dart';

class UbahDataDiri extends StatefulWidget {
  const UbahDataDiri({super.key});

  @override
  State<UbahDataDiri> createState() => _UbahDataDiriState();
}

class _UbahDataDiriState extends State<UbahDataDiri> {
  File? image;
  String imgURL = '';
  XFile? file;
  // Future getImage() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? imagePicked =
  //       await _picker.pickImage(source: ImageSource.gallery);
  //   image = File(imagePicked!.path);
  //   // setState(() {});
  // }

  var nama = TextEditingController(text: Utils.USER_NAMA);
  var tempatLahir = TextEditingController(text: Utils.USER_TEMPAT_LAHIR);
  var tanggalLahir = TextEditingController(text: Utils.USER_TANGGAL_LAHIR);
  var noAkademik = TextEditingController(text: Utils.USER_NO_AKADEMIK);
  var pangkat = TextEditingController(text: Utils.USER_PANGKAT);
  var jenisKelamin = TextEditingController(text: Utils.USER_JENIS_KELAMIN);
  var ttBB = TextEditingController(text: Utils.USER_TT_BB);
  var email = TextEditingController(text: Utils.USER_EMAIL);

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    print('INI NAMA ${nama.text}');
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.all(25),
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ubah data',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  child: Stack(
                    children: [
                      file != null
                          ? Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(200),
                                child: Image.file(
                                  File(file!.path),
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                Utils.USER_FOTO,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                      Positioned(
                        bottom: 0,
                        right: 15,
                        child: InkWell(
                          onTap: () async {
                            // getImage();
                            ImagePicker imagePicker = ImagePicker();
                            file = await imagePicker.pickImage(
                                source: ImageSource.gallery, imageQuality: 20);
                            setState(() {});
                          },
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor:
                                Colors.grey.shade200.withOpacity(0.7),
                            child: Shimmer.fromColors(
                              baseColor: Colors.black,
                              highlightColor: Colors.blue.shade100,
                              child: const Icon(
                                Icons.edit,
                                size: 27,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: nama,
                    decoration: InputDecoration(
                        labelText: 'Nama',
                        border: InputBorder.none,
                        hintText: 'Nama Lengkap'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: tempatLahir,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Tempat lahir'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: tanggalLahir,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Tanggal lahir'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: noAkademik,
                    readOnly: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'No. Akademik'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: pangkat,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Pangkat'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: jenisKelamin,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Jenis Kelamin'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: ttBB,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'TT / BB'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: email,
                    readOnly: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, labelText: 'Email'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    loading = true;
                  });
                  Reference referenceRoot = FirebaseStorage.instance.ref();
                  Reference referenceDirImages = referenceRoot.child('images/');
                  Reference referenceImageToUpload =
                      referenceDirImages.child(Utils.USER_NO_AKADEMIK);
                  try {
                    image = File(file!.path);

                    await referenceImageToUpload.putFile(
                        image!, SettableMetadata(contentType: 'image/jpeg'));
                    setState(() {});
                    imgURL = await referenceImageToUpload.getDownloadURL();
                    print('LINK GAMBAR : $imgURL');
                  } catch (e) {
                    print('ERROR IMAGE PICKER : $e');
                  }
                  Utils.USER_FOTO = imgURL;
                  Future.delayed(Duration(seconds: 2), () {
                    FirebaseFirestore.instance
                        .collection('USER')
                        .doc(Utils.USER_NO_AKADEMIK)
                        .update({
                      'foto': imgURL,
                      'nama': nama.text,
                      'tempat_lahir': tempatLahir.text,
                      'tanggal_lahir': tanggalLahir.text,
                      'no_akademik': noAkademik.text,
                      'pangkat': pangkat.text,
                      'jenis_kelamin': jenisKelamin.text,
                      'tt_bb': ttBB.text,
                      'email': email.text
                    });
                    Utils.getDataDiri(Utils.USER_NO_AKADEMIK);
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.rightSlide,
                      title: 'Berhasil mengubah data',
                      btnOkOnPress: () {
                        Navigator.pop(context);
                      },
                    ).show();
                  });
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
                    child: const Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        child: Text(
                          'Simpan',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                ),
              ),
            ],
          ),
          loading
              ? SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    strokeWidth: 7,
                  ))
              : SizedBox()
        ],
      ),
    );
  }
}
