import 'package:cloud_firestore/cloud_firestore.dart';

class Utils {
  static List data_user = [];

  //FUNGSI GET DATA USER
  static Future getDataUser() async {
    var user = await FirebaseFirestore.instance
        .collection('USER')
        .get()
        .then((value) => data_user = value.docs.toList());
    // print('DATA USER : ${data_user[0]['nama']}');
    // data_user.forEach((element) {
    //   print(element['nama']);
    // });
  }

  //FUNGSI GET DATA DIRI
  static Future getDataDiri(String no_akademik) async {
    var user = await FirebaseFirestore.instance
        .collection('USER')
        .doc(no_akademik)
        .get();

    Utils.USER_FOTO = user['foto'] ?? '';
    Utils.USER_NAMA = user['nama'] ?? '';
    Utils.USER_TEMPAT_LAHIR = user['tempat_lahir'] ?? '';
    Utils.USER_TANGGAL_LAHIR = user['tanggal_lahir'] ?? '';
    Utils.USER_NO_AKADEMIK = user['no_akademik'] ?? '';
    Utils.USER_PANGKAT = user['pangkat'] ?? '';
    Utils.USER_JENIS_KELAMIN = user['jenis_kelamin'] ?? '';
    Utils.USER_TT_BB = user['tt_bb'] ?? '';
    Utils.USER_EMAIL = user['email'] ?? '';
  }

  //FUNGSI GET DATA KAPORLAP
  static Future getDataKaporlap(String no_akademik) async {
    var kaporlap = await FirebaseFirestore.instance
        .collection('KAPORLAP')
        .doc(no_akademik)
        .get();
    Utils.PB_PDL = kaporlap['pb_pdl'] ?? '';
    Utils.PB_PDH = kaporlap['pb_pdh'] ?? '';
    Utils.PB_PORAL = kaporlap['pb_poral'] ?? '';
    Utils.PB_PDU = kaporlap['pb_pdu'] ?? '';
    Utils.PB_PDPS = kaporlap['pb_pdps'] ?? '';
    Utils.PB_PDPM = kaporlap['pb_pdpm'] ?? '';
    Utils.PB_PIYAMA = kaporlap['pb_piyama'] ?? '';
    Utils.PB_TRAINING_PORAL = kaporlap['pb_training_poral'] ?? '';
    //
    Utils.PK_PDL = kaporlap['pk_pdl'] ?? '';
    Utils.PK_PDH = kaporlap['pk_pdh'] ?? '';
    Utils.PK_PORAL = kaporlap['pk_poral'] ?? '';
    Utils.PK_PDU = kaporlap['pk_pdu'] ?? '';
    //
    Utils.PKP_BARET = kaporlap['pkp_baret'] ?? '';
    Utils.PKP_PDH = kaporlap['pkp_pdh'] ?? '';
    Utils.PKP_PDU = kaporlap['pkp_pdu'] ?? '';
    Utils.PKP_PDL = kaporlap['pkp_pdl'] ?? '';
    //
    Utils.AKS_KATGA = kaporlap['aks_katga'] ?? '';
    Utils.AKS_CEVRON = kaporlap['aks_cevron'] ?? '';
    Utils.AKS_EVOLET = kaporlap['aks_evolet'] ?? '';
    Utils.AKS_KAOS_KAKI = kaporlap['aks_kaos_kaki'] ?? '';
    Utils.AKS_NAMETAG = kaporlap['aks_nametag'] ?? '';
    Utils.AKS_SABUK = kaporlap['aks_sabuk'] ?? '';
  }

  //DATA DIRI
  static String USER_FOTO = '';
  static String USER_NAMA = '';
  static String USER_TEMPAT_LAHIR = '';
  static String USER_TANGGAL_LAHIR = '';
  static String USER_NO_AKADEMIK = '';
  static String USER_PANGKAT = '';
  static String USER_JENIS_KELAMIN = '';
  static String USER_TT_BB = '';
  static String USER_EMAIL = '';

  //DATA KAPORLAP
  static String PB_PDL = '';
  static String PB_PDH = '';
  static String PB_PORAL = '';
  static String PB_PDU = '';
  static String PB_PDPS = '';
  static String PB_PDPM = '';
  static String PB_PIYAMA = '';
  static String PB_TRAINING_PORAL = '';
  //
  static String PK_PDL = '';
  static String PK_PDH = '';
  static String PK_PORAL = '';
  static String PK_PDU = '';
  //
  static String PKP_BARET = '';
  static String PKP_PDH = '';
  static String PKP_PDU = '';
  static String PKP_PDL = '';
  //
  static String AKS_KATGA = '';
  static String AKS_CEVRON = '';
  static String AKS_EVOLET = '';
  static String AKS_SABUK = '';
  static String AKS_KAOS_KAKI = '';
  static String AKS_NAMETAG = '';
}
