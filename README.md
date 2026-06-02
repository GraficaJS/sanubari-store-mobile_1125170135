# 👟 Sanubari Store

Aplikasi UAS Mobile Lanjutan berbasis Flutter untuk katalog dan pemesanan sepatu premium yang terintegrasi dengan Firebase Authentication, Golang API, dan MySQL.

---

## 📱 Tampilan Aplikasi

### 🚀 Splash Screen

Menampilkan logo dan nama aplikasi sebelum masuk ke halaman login.

### 🔐 Login

Halaman login pengguna menggunakan email dan password Firebase Authentication.

### 📝 Register

Halaman registrasi akun baru menggunakan email dan password.

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
