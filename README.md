# Database Pelanggan

Buku kontak pelanggan satu halaman (HTML). Sinkron antar perangkat memakai Supabase (gratis), tanpa claude.ai.

## Fitur
- Tambah, ubah, hapus pelanggan
- Kolom: Nama Relasi, Nama Pic, Jabatan, Channel, Territory (Kabupaten/Kota), Area salesman, Telepon/WhatsApp, Email, Alamat, Catatan
- Pencarian teks dan filter Channel, Wilayah, Area salesman
- Login email + password, data tersinkron langsung antar perangkat

## Pasang
1. Buat akun dan project di https://supabase.com (gratis).
2. SQL Editor > New query > tempel isi `setup.sql` > Run.
3. Authentication > Sign In / Providers > Email: matikan "Allow new users to sign up" (supaya orang luar tidak bisa daftar).
4. Authentication > Users > Add user: buat akun untuk tiap anggota tim (email + password).
5. Project Settings > API: salin **Project URL** dan **anon public key**.
6. Di `index.html` isi `var SB_URL="..."` dan `var SB_KEY="..."` (cari kata `SB_URL`).
7. Unggah `index.html` ke repositori GitHub, lalu Settings > Pages > Deploy from a branch > `main` / root.

Anon key memang boleh terlihat publik. Yang melindungi data adalah login dan aturan RLS di `setup.sql`. Jangan pernah memasukkan `service_role key` ke file ini.

## Catatan
- Kalau `SB_URL`/`SB_KEY` kosong, halaman berjalan dalam mode lokal (data di browser saja).
- Data lama di browser bisa diunggah lewat tombol "Unggah ke database bersama" setelah login.
- Project gratis Supabase dijeda jika seminggu tanpa aktivitas; bisa diaktifkan kembali dari dashboard.
