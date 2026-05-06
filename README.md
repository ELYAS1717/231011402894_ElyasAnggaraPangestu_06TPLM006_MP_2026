penjelasan bagian-bagian utamanya:

1. Struktur Utama (MaterialApp & Scaffold)
MaterialApp: Ini adalah "bungkus" utama aplikasi kamu. Di sini kamu mengatur tema (seperti warna dasar biru) dan menentukan halaman mana yang pertama kali muncul (home).
Scaffold: Anggap ini sebagai "kerangka" sebuah halaman. Scaffold menyediakan tempat untuk AppBar (judul di atas) dan body (isi konten halaman).

2. Penyajian Data (ListView.builder)
Bagian ini adalah mesin yang mencetak daftar workshop kamu:
Daripada menulis kode satu per satu untuk setiap kartu, ListView.builder akan melihat berapa banyak data di dalam variabel workshops (ada 3 data) dan mengulangi proses pembuatan kartu sebanyak itu secara otomatis.
Ini membuat aplikasi tetap ringan karena Flutter hanya akan merender kartu yang terlihat di layar saja.

3. Komponen Kartu (Card & Padding)
Card: Widget ini memberikan efek kotak putih dengan sudut melengkung dan sedikit bayangan agar terlihat timbul dari latar belakang abu-abu.
Padding: Ini adalah "ruang napas". Tanpa Padding, teks di dalam kartu akan menempel ke pinggir kotak, yang membuatnya terlihat sesak dan sulit dibaca.

4. Pengaturan Posisi (Column & Row)
Inilah cara kamu mengatur tata letak informasi:
Column (Kolom): Digunakan untuk menyusun Judul, Tanggal, dan Lokasi secara vertikal (atas ke bawah).
Row (Baris): Digunakan untuk meletakkan Ikon di sebelah Teks, atau meletakkan informasi Kuota di sebelah kiri dan Tombol di sebelah kanan dalam satu baris yang sama.
MainAxisAlignment.spaceBetween: Ini adalah perintah agar informasi Kuota "didorong" ke kiri mentok dan Tombol Daftar "didorong" ke kanan mentok.

5. Logika Sederhana (Kondisional)
Ada sedikit logika pintar di bagian kuota dan tombol:
Warna Teks: Jika kuota bertuliskan 'Penuh', maka warnanya otomatis berubah jadi Merah (Colors.red). Jika belum penuh, warnanya Biru.
Tombol Nonaktif: Di bagian onPressed, jika kuota 'Penuh', maka tombol diset menjadi null yang artinya tombol tersebut mati/tidak bisa diklik (warnanya akan berubah jadi abu-abu secara otomatis).
