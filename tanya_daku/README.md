# tanya_daku

## Nama :
Mochamad Zaidan Al Rasyid
452210119

## Deskripsi Aplikasi
Tanya Daku adalah aplikasi hiburan interaktif yang mensimulasikan pengalaman bertanya kepada "asisten virtual acak". Setiap kali pengguna mengetuk gambar bola di layar, aplikasi akan menampilkan respons secara acak dari kumpulan jawaban yang telah disediakan

![image](https://github.com/user-attachments/assets/66425603-d2ce-4292-8d37-d3243b1e6902)

![image](https://github.com/user-attachments/assets/76dcf09c-3deb-49ac-9ba7-52e17aabba81)

![image](https://github.com/user-attachments/assets/5dacbfe3-f731-4a63-999f-d9f93e45f1a4)

![image](https://github.com/user-attachments/assets/7fd5179b-037e-4f44-971b-e96cfa178fe5)

![image](https://github.com/user-attachments/assets/24d164d5-f27d-4534-9e83-e39ab6638f57)

![image](https://github.com/user-attachments/assets/0f0abdc8-3f3e-4628-8147-143f1c451321)

## Penjelasan Program :
- Aplikasi dibangun menggunakan Flutter dan bahasa pemrograman Dart.
- Memiliki satu halaman utama yang menampilkan judul dan gambar bola interaktif.
- Gambar bola dibuat sebagai komponen terpisah dengan menggunakan StatefulWidget, karena tampilannya perlu berubah saat pengguna berinteraksi.
  Random().nextInt(5) + 1
  Fungsi ini akan menghasilkan angka antara 1 sampai 5, yang akan digunakan    untuk menentukan gambar ball1.png hingga ball5.png.
- Setiap perubahan gambar terjadi setelah pemanggilan fungsi setState(), agar UI dapat diperbarui secara langsung.
- Gambar bola juga berfungsi sebagai tombol, sehingga pengguna cukup mengetuk gambar untuk mendapatkan "jawaban".
- Aset gambar disimpan secara lokal dan ditampilkan melalui Image.asset.
- Antarmuka pengguna dibangun menggunakan widget dasar Flutter seperti:
  -MaterialApp: Menjadi kerangka aplikasi utama.
  -Scaffold: Menyediakan struktur tampilan termasuk AppBar dan konten.
  -AppBar: Menampilkan judul aplikasi di bagian atas layar.
  -Center: Memposisikan elemen di tengah layar.
  -TextButton: Digunakan sebagai tombol berbentuk gambar bola.  
  -Image.asset: Untuk menampilkan gambar dari folder asse
