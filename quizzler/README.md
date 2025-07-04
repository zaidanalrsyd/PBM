# Kuis Benar Salah

# Nama :
Mochamad Zaidan Al Rasyid
4522210118

# Deskripsi Aplikasi
Aplikasi ini merupakan aplikasi kuis sederhana berbasis Flutter yang menampilkan pertanyaan satu per satu kepada pengguna dengan dua tombol pilihan: TRUE dan FALSE. Pengguna diminta menjawab setiap pertanyaan yang tampil di layar. Setelah setiap jawaban, aplikasi akan mencatat skor dan menampilkan ikon centang (✔) atau silang (✖) di bagian bawah untuk menunjukkan apakah jawaban benar atau salah.
![Screenshot 2025-07-04 232321](https://github.com/user-attachments/assets/a1001910-4c3c-4ef2-95d0-713a5c5e5891)
![Screenshot 2025-07-04 232340](https://github.com/user-attachments/assets/45f522f9-ea0d-40f3-b5c4-67c175c7ea77)

Aplikasi ini dikembangkan menggunakan Flutter dan bahasa pemrograman Dart. Terdiri dari tiga file utama yang memiliki peran masing-masing, yaitu:
- main.dart sebagai tampilan utama dan pengontrol alur kuis,
- question.dart yang berfungsi sebagai class model penyimpanan pertanyaan dan jawaban,
- quiz_brain.dart sebagai pengelola daftar soal dan kontrol navigasi antar     pertanyaan.
Alur logika aplikasi:
- Pengguna akan disuguhkan satu pertanyaan dalam satu waktu.
- Jawaban pengguna akan diverifikasi apakah sesuai dengan jawaban yang benar.
- Hasil tiap jawaban ditampilkan dalam bentuk ikon check (✅) atau cross (❌) sebagai indikator skor.
- Saat mencapai akhir soal, muncul pop-up menggunakan package rflutter_alert   yang menampilkan jumlah jawaban benar, salah, dan total soal.
- Setelah alert ditutup, kuis akan dimulai ulang secara otomatis.
  
Fitur utama:
- Dua tombol interaktif dengan warna berbeda (hijau untuk TRUE dan merah       untuk FALSE).
- Indikator hasil secara visual menggunakan widget Icon.
- Pop-up hasil menggunakan Alert dari package flutter_alert.
- Pergantian tampilan dikelola menggunakan setState() dalam StatefulWidget     agar UI dapat berubah sesuai aksi pengguna.
