class DataDiri {
  
  final String nama, tempat_lahir, tanggal_lahir, no_akademik, pangkat, jenis_kelamin, tt_bb, email;
  DataDiri({required this.nama, required this.tempat_lahir, required this.tanggal_lahir, required this.no_akademik, required this.pangkat, required this.jenis_kelamin, required this.tt_bb, required this.email});

  factory DataDiri.fromJson(Map<String, dynamic> json) {
    return DataDiri(
        nama: json['nama'].toString(),
        tempat_lahir: json['tempat_lahir'].toString(),
        tanggal_lahir: json['tanggal_lahir'].toString(),
        no_akademik: json['no_akademik'].toString(),
        pangkat: json['pangkat'].toString(),
        jenis_kelamin: json['jenis_kelamin'],
        tt_bb: json['tt_bb'].toString(),
        email: json['email'].toString(),
        );
  }

  
}
