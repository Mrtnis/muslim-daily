class SurahModel {
  String? id;
  String? title;
  String? meaning;
  int? numberOfAyat;
  String? arabic;

  SurahModel(
      {this.id, this.title, this.meaning, this.numberOfAyat, this.arabic});

  SurahModel.fromJson(Map<String, dynamic> json) {
    id = json['nomor'];
    title = json['nama'];
    meaning = json['arti'];
    numberOfAyat = json['ayat'];
    arabic = json['asma'];
  }
}
