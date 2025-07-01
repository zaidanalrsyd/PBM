# mini_habit_tracker

### Mochamad Zaidan Al rasyid
### 4522210118
<<<<<<< HEAD

## Tujuan Pembelajaran
Tujuan pembelajaran ini adalah memahami dan menerapkan ephemeral state dengan StatefulWidget dan setState() untuk operasi CRUD, menggunakan AlertDialog untuk interaksi pengguna, mengelola input dengan TextEditingController dan validasi dasar, memanfaatkan PopupMenuButton untuk aksi tambahan, memodifikasi tampilan item berdasarkan state, serta menganalisis proses rebuild widget melalui print statement.

## Deskripsi Aplikasi
Aplikasi ini berfungsi sebagai Habit Tracker Mini yang memungkinkan pengguna untuk menambah, mengubah, menghapus, serta menandai kebiasaan harian yang sudah dilakukan. Data kebiasaan diambil dari file lokal `assets/habits.json`, dan pengguna dapat mengelola status setiap kebiasaan secara manual.

## Uji Aplikasi

### Halama Utama
![image](https://github.com/user-attachments/assets/231b9bbd-4780-4eee-9880-879eda7a1d92)

### Uji Coba Centang (strikethrough)
![image](https://github.com/user-attachments/assets/398b7066-3c09-4351-a426-0d9800293557)

### Tambah Habbit
#### Tombol tambah habbit
![image](https://github.com/user-attachments/assets/4ff9686b-15af-456e-af0e-fcb7dd92dc44)
#### Form Isi Habbit
![image](https://github.com/user-attachments/assets/91e3615d-8341-4737-8d67-32a05880b49c)
#### Form kosong (validasi eror)
![image](https://github.com/user-attachments/assets/479d31dc-76bd-4b07-a5d3-191350f2de0d)

### Interaksi Edit Habbit
#### Ikon 3 titik untuk opsi habbit
![image](https://github.com/user-attachments/assets/7ab66f8f-1b44-45a2-bf73-8eac9c72ce9f)
#### Konfirmasi Hapus
![image](https://github.com/user-attachments/assets/fa0fd1e4-0e0f-425a-b663-61cb7997a95a)
#### Tampilan setelah di hapus
![image](https://github.com/user-attachments/assets/a295f30d-a564-4928-85c6-b115eef2945b)

### Uji Progres Bar Habbit Yang Sudah Dilakukan
![image](https://github.com/user-attachments/assets/3ed4e249-efb3-4add-b265-2f838ea92aa0)

### Uji Reset Check Box
![image](https://github.com/user-attachments/assets/95ec222d-7239-414a-96e7-66d29784e92b)

### Uji Ephermal State 
![image](https://github.com/user-attachments/assets/1e7e75f7-3990-497e-af59-9a05d57a100f)

### Debugging Console Output
#### Debug saat menambahkan habit
![image](https://github.com/user-attachments/assets/38d53af0-42dd-4148-ac09-ba1e95a78211)
#### Debug saat mengedit habit
![image](https://github.com/user-attachments/assets/daaf85f2-4fc4-4576-8d78-05bb334de2d6)
#### Debug saat menghapus habit
![image](https://github.com/user-attachments/assets/ef44d553-c463-4cf1-9965-4d0bb35b14b6)
#### Debug pengecekan keadaan
![Screenshot 2025-06-04 005127](https://github.com/user-attachments/assets/ec7c1581-dcfd-468f-adbf-01ad5bddbfa3)

### Penjelasan Program
Aplikasi ini dikembangkan menggunakan Flutter dengan bahasa pemrograman Dart untuk menciptakan antarmuka yang responsif dan interaktif.

Data kebiasaan (habit) disimpan dalam file lokal assets/habits.json, yang dimuat ke aplikasi menggunakan DefaultAssetBundle dan diproses melalui fungsi jsonDecode untuk mengubah data JSON menjadi format yang bisa digunakan dalam aplikasi.

Setiap habit memiliki ID unik yang dibuat secara otomatis berdasarkan nilai ID terbesar yang sudah ada, menggunakan fungsi max, sehingga memudahkan penambahan data baru tanpa duplikasi.

Pengguna dapat dengan mudah:
  1. Menambahkan habit baru lewat dialog yang muncul setelah menekan tombol tambah (+), dengan form yang memiliki validasi         untuk   memastikan input benar.
  2. Mengedit habit melalui menu pilihan pada setiap item (ikon titik tiga), memungkinkan perubahan nama atau deskripsi habit.
  3.  Menghapus habit dengan konfirmasi melalui dialog, untuk mencegah penghapusan tidak sengaja.
  4. Terdapat fitur checkbox pada setiap habit untuk menandai apakah kebiasaan tersebut sudah dilakukan atau belum.
  5.  Tombol reset berfungsi untuk menghapus semua tanda centang sekaligus, mengembalikan semua habit ke status belum               dilakukan.
  6. Pengguna juga dapat mengubah tampilan aplikasi antara tema gelap dan terang secara langsung dari AppBar dengan menekan        ikon   khusus, memberikan pengalaman visual yang sesuai dengan preferensi.
  7. Desain aplikasi menggunakan warna yang adaptif sesuai tema yang dipilih, sehingga tampilannya tetap bersih, nyaman, dan       mudah digunakan di berbagai kondisi pencahayaan.

File assets/habits.json digunakan sebagai sumber data yang dibaca melalui DefaultAssetBundle, kemudian isinya dikonversi ke format objek Dart menggunakan jsonDecode.

Untuk membuat ID habit baru, sistem secara otomatis menghitung ID tertinggi yang sudah ada dengan fungsi max, lalu menambahkan nilainya agar ID tetap unik dan berurutan.
=======

## Tujuan Pembelajaran
Tujuan pembelajaran ini adalah memahami dan menerapkan ephemeral state dengan StatefulWidget dan setState() untuk operasi CRUD, menggunakan AlertDialog untuk interaksi pengguna, mengelola input dengan TextEditingController dan validasi dasar, memanfaatkan PopupMenuButton untuk aksi tambahan, memodifikasi tampilan item berdasarkan state, serta menganalisis proses rebuild widget melalui print statement.

## Deskripsi Aplikasi
Aplikasi ini berfungsi sebagai Habit Tracker Mini yang memungkinkan pengguna untuk menambah, mengubah, menghapus, serta menandai kebiasaan harian yang sudah dilakukan. Data kebiasaan diambil dari file lokal `assets/habits.json`, dan pengguna dapat mengelola status setiap kebiasaan secara manual.

## Uji Aplikasi

### Halama Utama
![image](https://github.com/user-attachments/assets/231b9bbd-4780-4eee-9880-879eda7a1d92)

### Uji Coba Centang (strikethrough)
![image](https://github.com/user-attachments/assets/398b7066-3c09-4351-a426-0d9800293557)

### Tambah Habbit
#### Tombol tambah habbit
![image](https://github.com/user-attachments/assets/4ff9686b-15af-456e-af0e-fcb7dd92dc44)
#### Form Isi Habbit
![image](https://github.com/user-attachments/assets/91e3615d-8341-4737-8d67-32a05880b49c)
#### Form kosong (validasi eror)
![image](https://github.com/user-attachments/assets/479d31dc-76bd-4b07-a5d3-191350f2de0d)

### Interaksi Edit Habbit
#### Ikon 3 titik untuk opsi habbit
![image](https://github.com/user-attachments/assets/7ab66f8f-1b44-45a2-bf73-8eac9c72ce9f)
#### Konfirmasi Hapus
![image](https://github.com/user-attachments/assets/fa0fd1e4-0e0f-425a-b663-61cb7997a95a)
#### Tampilan setelah di hapus
![image](https://github.com/user-attachments/assets/a295f30d-a564-4928-85c6-b115eef2945b)

### Uji Progres Bar Habbit Yang Sudah Dilakukan
![image](https://github.com/user-attachments/assets/3ed4e249-efb3-4add-b265-2f838ea92aa0)

### Uji Reset Check Box
![image](https://github.com/user-attachments/assets/95ec222d-7239-414a-96e7-66d29784e92b)

### Uji Ephermal State 
![image](https://github.com/user-attachments/assets/1e7e75f7-3990-497e-af59-9a05d57a100f)

### Debugging Console Output
#### Debug saat menambahkan habit
![image](https://github.com/user-attachments/assets/38d53af0-42dd-4148-ac09-ba1e95a78211)
#### Debug saat mengedit habit
![image](https://github.com/user-attachments/assets/daaf85f2-4fc4-4576-8d78-05bb334de2d6)
#### Debug saat menghapus habit
![image](https://github.com/user-attachments/assets/ef44d553-c463-4cf1-9965-4d0bb35b14b6)
#### Debug pengecekan keadaan
![Screenshot 2025-06-04 005127](https://github.com/user-attachments/assets/ec7c1581-dcfd-468f-adbf-01ad5bddbfa3)

### Penjelasan Program
Aplikasi ini dikembangkan menggunakan Flutter dengan bahasa pemrograman Dart untuk menciptakan antarmuka yang responsif dan interaktif.

Data kebiasaan (habit) disimpan dalam file lokal assets/habits.json, yang dimuat ke aplikasi menggunakan DefaultAssetBundle dan diproses melalui fungsi jsonDecode untuk mengubah data JSON menjadi format yang bisa digunakan dalam aplikasi.

Setiap habit memiliki ID unik yang dibuat secara otomatis berdasarkan nilai ID terbesar yang sudah ada, menggunakan fungsi max, sehingga memudahkan penambahan data baru tanpa duplikasi.

Pengguna dapat dengan mudah:
  1. Menambahkan habit baru lewat dialog yang muncul setelah menekan tombol tambah (+), dengan form yang memiliki validasi         untuk   memastikan input benar.
  2. Mengedit habit melalui menu pilihan pada setiap item (ikon titik tiga), memungkinkan perubahan nama atau deskripsi habit.
  3.  Menghapus habit dengan konfirmasi melalui dialog, untuk mencegah penghapusan tidak sengaja.
  4. Terdapat fitur checkbox pada setiap habit untuk menandai apakah kebiasaan tersebut sudah dilakukan atau belum.
  5.  Tombol reset berfungsi untuk menghapus semua tanda centang sekaligus, mengembalikan semua habit ke status belum               dilakukan.
  6. Pengguna juga dapat mengubah tampilan aplikasi antara tema gelap dan terang secara langsung dari AppBar dengan menekan        ikon   khusus, memberikan pengalaman visual yang sesuai dengan preferensi.
  7. Desain aplikasi menggunakan warna yang adaptif sesuai tema yang dipilih, sehingga tampilannya tetap bersih, nyaman, dan       mudah digunakan di berbagai kondisi pencahayaan.

File assets/habits.json digunakan sebagai sumber data yang dibaca melalui DefaultAssetBundle, kemudian isinya dikonversi ke format objek Dart menggunakan jsonDecode.

Untuk membuat ID habit baru, sistem secara otomatis menghitung ID tertinggi yang sudah ada dengan fungsi max, lalu menambahkan nilainya agar ID tetap unik dan berurutan.














>>>>>>> b7bde03ad15164ad39024c167f1e68d0aa47e022
