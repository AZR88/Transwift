# Transwift

## Tujuan
Transwift adalah aplikasi mobile yang dirancang untuk memberikan rute berdasarkan keinginan pengguna, serta menyediakan pemesanan tiket transportasi lokal di daerah Jember dan rekomendasi wisata sekitar. Aplikasi ini memanfaatkan lokasi realtime untuk memberikan informasi yang relevan dan akurat.

## Teknologi
- **Bahasa Pemrograman:** Dart
- **Framework:** Flutter
- **API:** Google Maps

## Fitur Utama
- **Pemberian Rute:** Menyediakan rute perjalanan berdasarkan lokasi pengguna dan tujuan yang diinginkan.
- **Pemesanan Tiket Transportasi:** Fitur untuk memesan tiket transportasi lokal di daerah Jember.
- **Rekomendasi Wisata:** Menyediakan rekomendasi tempat wisata di sekitar lokasi pengguna menggunakan lokasi realtime.

## Struktur Proyek
- **lib:** Berisi kode sumber utama untuk aplikasi.
  - **screens:** Berisi tampilan dan layar aplikasi.
  - **services:** Berisi layanan untuk berinteraksi dengan API dan layanan eksternal seperti Google Maps.
  - **models:** Berisi model data untuk aplikasi.
- **assets:** Berisi file aset seperti gambar dan ikon.
- **pubspec.yaml:** File konfigurasi untuk mengelola dependensi Dart dan Flutter.

## Cara Menggunakan

1. **Clone Repository:**
   Clone repository ini ke mesin lokal Anda dengan menggunakan perintah berikut:
   `git clone https://github.com/username/Transwift.git`
   Kemudian, masuk ke direktori proyek:
   `cd Transwift`

2. **Mengatur Dependensi:**
   Pastikan Anda telah menginstal Flutter di sistem Anda. Jalankan perintah berikut untuk mengunduh semua dependensi yang diperlukan:
   `flutter pub get`

3. **Membangun APK:**
   Untuk membangun APK dari aplikasi Flutter, gunakan perintah berikut:
   `flutter build apk`
   Ini akan menghasilkan file APK yang dapat diinstal pada perangkat Android.

## Kontribusi
Kami menyambut kontribusi dari pengembang lain. Jika Anda ingin berkontribusi, ikuti langkah-langkah berikut:

1. **Fork Repository:**
   Klik tombol "Fork" di sudut kanan atas halaman repository ini untuk membuat salinan repository ini di akun GitHub Anda.

2. **Buat Branch Baru:**
   Buat branch baru untuk fitur atau perbaikan Anda dengan perintah:
   `git checkout -b nama-branch-anda`

3. **Lakukan Perubahan dan Commit:**
   Setelah membuat perubahan, commit perubahan tersebut dengan deskripsi yang jelas:
   `git add .`
   `git commit -m "Deskripsi singkat tentang perubahan yang Anda buat"`

4. **Kirim Pull Request:**
   Kirim pull request dari branch Anda ke repository utama dengan mengklik tombol "New Pull Request" di halaman GitHub repository asli dan ikuti instruksi yang ada.

## Lisensi
Repository ini dilisensikan di bawah [MIT License](LICENSE). Anda bebas menggunakan, mengubah, dan mendistribusikan kode ini dengan syarat mencantumkan lisensi asli dan memberikan kredit kepada kontributor asli.
