# 👟 Sanubari Store

Aplikasi UAS Mobile Lanjutan berbasis Flutter untuk katalog dan pemesanan sepatu premium yang terintegrasi dengan Firebase Authentication, Golang API, dan MySQL.

---

## 📱 Tampilan Aplikasi

### 🚀 Splash Screen, Login, Register,
Menampilkan logo dan nama aplikasi sebelum masuk ke halaman login.
<img width="1080" height="2400" alt="SplashScreen" src="https://github.com/user-attachments/assets/807819bd-134d-4b41-bb56-966323ad4465" />
Halaman login pengguna menggunakan email dan password Firebase Authentication.
<img width="1080" height="2400" alt="Login (2)" src="https://github.com/user-attachments/assets/98f2f1f5-721a-4fe6-bd9c-25e3c273a7ec" />
Halaman registrasi akun baru menggunakan email dan password.
<img width="1080" height="2400" alt="Register (2)" src="https://github.com/user-attachments/assets/8406ab60-cd79-4dd0-81ee-c2105640f2d0" />

### 🏠 Dashboard

Menampilkan daftar produk sepatu yang diambil dari API Golang dan database MySQL.

### 📂 Category

Menampilkan kategori produk yang tersedia.

### 👟 Detail Produk

Menampilkan informasi produk berupa gambar, nama, harga, dan tombol tambah ke keranjang.

### 🛒 Cart

Menampilkan daftar produk yang ditambahkan ke keranjang beserta total belanja.

### 👤 Profile

Menampilkan informasi akun pengguna yang sedang login serta tombol logout.

### 📱 Bottom Navigation

Navigasi utama aplikasi:

* Home
* Category
* Cart
* Profile

---

## 💡 Fitur Utama

* Registrasi akun menggunakan Firebase Authentication
* Login menggunakan email dan password
* Logout akun
* Menampilkan daftar produk dari MySQL melalui API Golang
* Detail produk
* Keranjang belanja (Cart)
* Bottom Navigation
* State Management menggunakan Provider
* REST API menggunakan Golang (Gin)
* Database MySQL

---

## ⚙️ Teknologi

### Frontend

* Flutter
* Provider
* Dio

### Backend

* Golang
* Gin Framework

### Database

* MySQL

### Authentication

* Firebase Authentication

### Version Control

* Git
* GitHub

---

## 📂 Struktur Project

UAS_SANUBARI_STORE

├── sanubari_store/

│ ├── lib/

│ ├── screens/

│ ├── providers/

│ ├── services/

│ ├── models/

│ └── widgets/

│

└── sanubari_backend/

├── config/

├── controllers/

├── models/

├── routes/

└── main.go

---

## 🔗 API Endpoint

GET

/api/products

Digunakan untuk mengambil daftar produk dari database MySQL.

---

## 🗄️ Database

Database menggunakan MySQL dengan tabel:

products

Kolom utama:

* id
* name
* brand
* description
* image_url
* price
* stock
* created_at

---

## 🎓 Tentang Proyek

Dikembangkan untuk memenuhi tugas UAS Mobile Lanjutan.

Nama: [Grafica Jati Sugiyarto]

NIM: 1125170135

Program Studi: Teknologi Informasi

Tujuan proyek ini adalah mengintegrasikan Flutter dengan backend Golang dan database MySQL untuk membangun aplikasi marketplace sederhana yang menerapkan autentikasi, REST API, state management, dan navigasi modern pada perangkat mobile.
