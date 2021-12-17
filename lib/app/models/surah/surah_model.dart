class Surah {
  int? id;
  String? title;
  String? meaning;
  int? numberOfAyat;
  String? arabic;

  Surah({this.id, this.title, this.meaning, this.numberOfAyat, this.arabic});

  Surah.fromJson(Map<String, dynamic> json) {
    id = json['nomor'];
    title = json['nama'];
    meaning = json['arti'];
    numberOfAyat = json['ayat'];
    arabic = json['asma'];
  }
}
