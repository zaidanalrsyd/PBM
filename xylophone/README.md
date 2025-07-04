## Xylophone 🎹

## Nama :
Mochamad Zaidan Al Rasyid
4522210118

## Aplikasi Xylophone 
aplikasi Xylophone menggunakan framework Flutter. Aplikasi dirancang untuk menampilkan serangkaian tombol berwarna secara vertikal, dan setiap tombol akan memutar suara nada yang berbeda saat ditekan. Ini mirip seperti alat musik gambang (xylophone) versi digital.

![Screenshot 2025-07-01 203338](https://github.com/user-attachments/assets/1cf68674-0523-485c-b355-0133c530e9d0)

## deskripsi program 
 Aplikasi Xylophone adalah aplikasi Flutter sederhana yang dirancang untuk mensimulasikan alat musik gambang (xylophone) secara digital. Pengguna dapat menekan tombol-tombol warna-warni pada layar, dan masing-masing tombol akan menghasilkan bunyi nada yang berbeda.

1. Antarmuka (UI)
Aplikasi ini menampilkan tujuh tombol besar secara vertikal dari atas ke bawah. Masing-masing tombol:

- Memiliki warna berbeda untuk membedakan setiap nada.
- Mengisi tinggi layar secara merata (tombol tidak terlalu besar atau kecil).
- Tidak memiliki teks — hanya warna — untuk fokus pada aspek visual dan interaktif.
- Desain ini dibuat agar menarik secara visual dan mudah digunakan di berbagai ukuran layar, baik di HP, tablet, maupun web.

2. Fungsi Utama: Memainkan Nada
Setiap tombol yang ditekan akan:
-Mendeteksi interaksi pengguna melalui sentuhan.
- Memutar file suara yang sudah disiapkan sebelumnya.

- Suara-suara ini mewakili 7 nada musik standar: 
- Tombol 1  Warna Merah : Do
- Tombol 2  Warna Oranye : Re
- Tombol 3  Warna Kuning : Mi
- Tombol 4  Warna Hijau : So
- Tombol 5  Warna Teal : La
- Tombol 6  Warna Biru : Si
- Tombol 7  Warna Ungu  :Do
Suara diambil dari file audio .wav atau .mp3 yang disimpan dalam folder aset aplikasi.

3. Responsivitas
Aplikasi didesain agar responsif, artinya tampilannya bisa menyesuaikan dengan ukuran layar perangkat apa pun. Setiap tombol otomatis menyesuaikan ukuran dan posisi tanpa harus diatur manual.

4. Teknologi yang Digunakan
Flutter: Framework utama untuk membangun UI dan logika aplikasi.
Audio Package: Digunakan untuk memutar file audio secara lokal ketika tombol ditekan.
Asset Management: Suara-suara disimpan di folder aset yang diakses aplikasi secara offline.

