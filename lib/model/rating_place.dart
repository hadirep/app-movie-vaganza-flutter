class RatingPlace {
  String name;
  String genre;
  String durasi;
  String sutradara;
  String ratingUsia;
  String ratingFilm;
  String sinopsis;
  String imageAsset;

  RatingPlace({
    required this.name,
    required this.genre,
    required this.durasi,
    required this.sutradara,
    required this.ratingUsia,
    required this.ratingFilm,
    required this.sinopsis,
    required this.imageAsset,
  });
}

var ratingPlaceList = [
  RatingPlace(
    name: "THE BATMAN",
    genre: "Action, Crime, Drama",
    durasi: "2 Jam 56 Menit",
    sutradara: "Matt Reeves",
    ratingUsia: "R13+",
    ratingFilm: "9.2",
    sinopsis:
        "Di tahun kedua memerangi kejahatan, Batman mengungkap korupsi besar di Gotham City yang menghubungkan keluarganya sendiri dan menghadapi pembunuh berantai yang dikenal sebagai Riddler.",
    imageAsset: "images/the-batman.jpg",
  ),
  RatingPlace(
    name: "UNCHARTED",
    genre: "Action",
    durasi: "1 Jam 56 Menit",
    sutradara: "Ruben Fleischer",
    ratingUsia: "R13+",
    ratingFilm: "9.2",
    sinopsis:
        "Nathan Drake(Tom Holland) adalah seorang bartender yang pintar. Ia mengaku sebagai keturunan dari penjelajah kenamaan asala Inggris bernama Sir Francis Drake."
        "Bersama Viktor Sulivan (Mark Wahlberg) ia mengarungi lautan untuk mencari harta karun terbesar yang tidak pernah ditemukan dan mencari petunjuk kakanya yang hilang.",
    imageAsset: "images/uncharted.jpg",
  ),
  RatingPlace(
    name: "GARIS WAKTU",
    genre: "Drama",
    durasi: "1 Jam 40 Menit",
    sutradara: "Jeihan Angga",
    ratingUsia: "R13+",
    ratingFilm: "8.3",
    sinopsis:
        "APRIL, seorang gadis dengan kegemaran menulis puisi bertemu dengan SENANDIKA, musisi yang berhasil mencuri perhatian dengan filosofi dan prinsipnya. April yang melihat potensi pada diri Sena -- nama panggilan yang April berikan pada Senandika -- pun memperkenalkannya pada SANYA, produser muda sahabat April yang selalu menjalani hidup dengan bebas \n"
        "Konflik dimulai ketika April dan Sena sudah saling jatuh cinta, namun terhalang restu ayah April, HALIM, yang menilai Sena tidaklah pantas untuk menjadi pendamping anaknya. Segera setelah mengetahui kedekatan April dan Sena, Halim mengirim sang anak ke London dengan tujuan menjauhkannya dari Sena. Selama jarak memisahkannya dengan Sena, April menitipkan perjuangan karir Sena pada Sanya, dengan harapan kesuksesan Sena akan meluluhkan Halim dan membuatnya merestui hubungan April dan Sena. \n"
        "Bertahun kemudian, April kembali ke Indonesia dan menyaksikan sendiri kesuksesan yang telah berhasil diraih Sena. Sayang, kesalahpahaman yang terjadi antara April, Sena, dan Sanya melahirkan keraguan di hati April untuk Sena.",
    imageAsset: "images/garis-waktu.jpg",
  ),
  RatingPlace(
    name: "DEATH ON THE NILE",
    genre: "Crime, Drama, Mystery",
    durasi: "2 Jam 7 Menit",
    sutradara: "Kenneth Branagh",
    ratingUsia: "R13+",
    ratingFilm: "8.7",
    sinopsis:
        "Aksi Hercule Poirot kembali lagi. Sang detektif kali ini akan menyelidiki sebuah pembunuhan seorang ahli waris muda di Sungai Nil. Siapa pembunuhnya?",
    imageAsset: "images/death-on-the-nile.jpg",
  ),
];
