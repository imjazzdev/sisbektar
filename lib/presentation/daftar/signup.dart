import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sibektar/presentation/daftar/daftar_penutup_badan.dart';
import 'package:sibektar/presentation/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

  var nama = TextEditingController();
  var tempatLahir = TextEditingController();
  var tanggalLahir = TextEditingController();
  var noAkademi = TextEditingController();
  var pangkat = TextEditingController();
  var jenisKelamin = 'Laki-laki';
  var ttBB = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();

  bool show = true;

  // @override
  // void initState() {
  //   AwesomeDialog(
  //     context: context,
  //     dialogType: DialogType.warning,
  //     animType: AnimType.rightSlide,
  //     title: 'Harap masukan data dengan benar!',
  //     btnOkOnPress: () {},
  //   ).show();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                  'Daftar',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              file != null
                  ? Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.file(
                              File(file!.path),
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          // borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/person.png',
                            height: 200,
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            // getImage();
                            ImagePicker imagePicker = ImagePicker();
                            file = await imagePicker.pickImage(
                                imageQuality: 20, source: ImageSource.gallery);
                            setState(() {});
                            // Reference referenceRoot =
                            //     FirebaseStorage.instance.ref();
                            // Reference referenceDirImages =
                            //     referenceRoot.child('images');
                            // Reference referenceImageToUpload =
                            //     referenceDirImages.child(DateTime.now()
                            //         .microsecondsSinceEpoch
                            //         .toString());
                            // try {
                            //   image = File(file!.path);

                            //   await referenceImageToUpload.putFile(image!);
                            //   setState(() {});
                            //   imgURL =
                            //       await referenceImageToUpload.getDownloadURL();
                            //   print('LINK GAMBAR : $imgURL');
                            // } catch (e) {
                            //   print('ERROR IMAGE PICKER : $e');
                            // }
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor:
                                Colors.grey.shade200.withOpacity(0.5),
                            child: Shimmer.fromColors(
                              baseColor: Colors.black,
                              highlightColor: Colors.blue.shade100,
                              child: const Icon(
                                Icons.file_upload_outlined,
                                size: 50,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
              const SizedBox(
                height: 20,
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
                    controller: nama,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Nama Lengkap'),
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
                        border: InputBorder.none, hintText: 'Tempat lahir'),
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
                        border: InputBorder.none, hintText: 'Tanggal lahir'),
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
                    controller: noAkademi,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'No. Akademik'),
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
                        border: InputBorder.none, hintText: 'Pangkat'),
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
                  child: DropdownButton(
                    value: jenisKelamin,
                    isExpanded: true,
                    underline: SizedBox(),
                    onChanged: (val) {
                      setState(() {
                        jenisKelamin = val.toString();
                      });
                    },
                    items: [
                      DropdownMenuItem(
                        child: Text('Laki-laki'),
                        value: 'Laki-laki',
                      ),
                      DropdownMenuItem(
                        child: Text('Perempuan'),
                        value: 'Perempuan',
                      ),
                    ],
                  ),
                  // child: TextField(
                  //   controller: jenisKelamin,
                  //   decoration: InputDecoration(
                  //       border: InputBorder.none, hintText: 'Jenis Kelamin'),
                  // ),
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
                        border: InputBorder.none, hintText: 'TT / BB'),
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
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
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
                    controller: password,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Password'),
                  ),
                ),
              ),
              const SizedBox(
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
                        if (file != null &&
                            // imgURL != '' &&
                            nama.text != null &&
                            tempatLahir.text != null &&
                            tanggalLahir != null &&
                            noAkademi.text != null &&
                            pangkat.text != null &&
                            jenisKelamin != '' &&
                            ttBB.text != null &&
                            email.text != null &&
                            password.text != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DaftarPenutupBadan(
                                  file: file!,
                                  foto: imgURL,
                                  nama: nama.text,
                                  tempatLahir: tempatLahir.text,
                                  tanggalLahir: tanggalLahir.text,
                                  noAkademi: noAkademi.text,
                                  pangkat: pangkat.text,
                                  jenisKelamin: jenisKelamin,
                                  ttBB: ttBB.text,
                                  email: email.text,
                                  password: password.text,
                                ),
                              ));
                        } else {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.warning,
                            animType: AnimType.rightSlide,
                            title: 'Lengkapi data dahulu',
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
        ],
      ),
    );
  }
}
