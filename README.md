# 👟 Sanubari Store

Aplikasi UAS Mobile Lanjutan berbasis Flutter untuk katalog dan pemesanan sepatu premium yang terintegrasi dengan Firebase Authentication, Golang API, dan MySQL.

---

## 📱 Tampilan Aplikasi

### 🚀 Splash Screen

Menampilkan logo dan nama aplikasi sebelum masuk ke halaman login.
<img width="1080" height="2400" alt="SplashScreen" src="https://github.com/user-attachments/assets/a78ff46c-a789-454b-803f-dd3b37f9d092" />

### 🔐 Login

Halaman login pengguna menggunakan email dan password Firebase Authentication.
<img width="1080" height="2400" alt="Login (2)" src="https://github.com/user-attachments/assets/dbba8c96-c8b3-4cf1-92dc-7cad4bd6a679" />

### 📝 Register

Halaman registrasi akun baru menggunakan email dan password.
<img width="1080" height="2400" alt="Register (2)" src="https://github.com/user-attachments/assets/2c29dd5f-3ee3-4d7c-b4fd-8667afec12cd" />

### 🏠 Dashboard

Menampilkan daftar produk sepatu yang diambil dari API Golang dan database MySQL.
<img width="720" height="1600" alt="dashboard" src="https://github.com/user-attachments/assets/a0753339-ac32-4b35-8103-c142f97b78b3" />

### 📂 Category

Menampilkan kategori produk yang tersedia.
<img width="1080" height="2400" alt="kategori" src="https://github.com/user-attachments/assets/df68c53c-e803-4880-9829-6c6622a6ae26" />

### 👟 Detail Produk

Menampilkan informasi produk berupa gambar, nama, harga, dan tombol tambah ke keranjang.
<img width="720" height="1600" alt="detail produk" src="https://github.com/user-attachments/assets/e675c937-6423-46a3-a3a6-8105b50b4c4a" />

### 🛒 Cart

Menampilkan daftar produk yang ditambahkan ke keranjang beserta total belanja.
<img width="1080" height="2400" alt="keranjang" src="https://github.com/user-attachments/assets/0ed1e187-92e6-4f07-aed2-554524a33ef7" />

### 👤 Profile

Menampilkan informasi akun pengguna yang sedang login serta tombol logout.
<img width="1080" height="2400" alt="profil" src="https://github.com/user-attachments/assets/77764e22-fc95-4e5a-98cd-8b8fb8d14b9f" />

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
