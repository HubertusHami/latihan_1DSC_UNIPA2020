# R fundamental for data  sains
"Hello World"
1+5
#Teks,angka dan rumus perhitungan
9
"Budi"
9*7

#Menampilkan Fungsi dengan Print
print("Hello World!")
print(3 + 4)

#Huruf besar, huruf kecil dan format angka
01
1 # 01 dan 1 adalah dua angka yang berbeda pada saat mengirim jawaban
"01-01-1999"
"1-1-1999"
"Budi"
"BUDI"

#FUNCTION
function adalah perintah R yang memiliki dan menerima beberapa nilai teks dan beberapa angka sebagai parameternya
mari kita fungsi yang sering kita gunakan yaitu , c
fungsi c digunakan untuk  membuat urutan angka maupun teks

c(10:40)

#Variabel
Angka-angka yang kita gunakan dapat juga disimpan dengan sesuatu yang dinamakan variabel
variabel adalah nama yang dapat kita gunakan untuk mengambil nilainya kembali

budi_berat_kg <- 68
santi_berat_kg <- 54.5
budi_berat_kg
santi_berat_kg

#Memasukkan data berupa angka 68 ke dalam variable bernama budi_berat_kg. 
#Maksud variable tersebut dinamakan demikian untuk menyatakan bahwa angka yang 
#dimasukkan mewakili berat badan seorang bernama Budi dalam satuan kilogram - atau
#singkatnya berat Budi 68 kg.
Nilai dimasukkan dengan bantuan operator <-. Operator ini disebut assignment operator.
Perhatikan bahwa perintah ini juga tidak mengeluarkan output apapun di bawahnya


#Menampilkan isi data dari nama variable budi_berat_kg.

Tugas: Buatlah nama variabel pi dengan nilai 3.14 dan lakukan pemanggilan pi

pi <- 3.14
pi

#COMMENT PADA R
comment adalah teks yang bisa dimasukkan pada R, tapi tidak dianggak sebagai kode yang bisa
dieksekusi.

2+2 #ini adalah koment


#Vector, LIST  DAN DATA  FRAME
Vector adalah  jenis data di R dengan struktur yang menyimpan deretan nilai
dengan tipe data sama.
# Ini adalah contoh vector untuk angka numerik dengan 3 data c(4, 5, 6)
c(4,5,6)

# Variable bernama angka dengan input berupa vector
angka <- c(4,5,6)
# Tampilkan isi variable angka dengan fungsi print
print(angka)



#Deretan Nilai dengan Operator
angka1 <- c(1,2,3,4,5,6,7,8,9)
print(angka1)
angka2 <- c(1:10)
print(angka2)


#Vector dengan isi Teks
nama_mahasiswa <- c("Wanda","Berto","Glory")
print(nama_mahasiswa)


#Index dan Accesro pada vektor
Cara penulisan index di variable adalah angka yang diapit dengan kurung siku
tunggal atau ganda. Penulisan ini selanjutnya disebut sebagai accessor.

# Buat vector variable bernama angka yang isinya 20 s/d 30
angka <- c(20:30)
print(angka)

# Tampilkan isi variable angka pada posisi ke 3
print(angka[3])

# Tampilkan isi variable angka pada posisi ke 5
print(angka[[5]])

# Tampilkan isi variable angka pada posisi ke 4 s/d 6
print(angka[4:6])

# Buat vector teks dengan nama kode_prodi yang diisi sesuai petunjuk soal
kode_prodi <- c("DKV","ILKOM","ICT")
# Tampilkan isi indeks ketiga dari kode_prodi
print(kode_prodi[3])



#Named Vector

membuat name vector
#Membuat named vector dengan nama nilai
nilai <- c(statistik = 89, fisika = 95, ilmukomunikasi = 100)

#Menampilkan isi variable nilai
print(nilai)

#Menampilkan isi dengan nama fisika
print(nilai["fisika"])
#Buat variable profil sesuai permintaan soal
profil <-c(nama = "Budi",tempat_tinggal = "Jakarta", tingkat_pendidikan= "S1")
#Tampilkan variable profil
print(profil)

print(profil["tempat_tinggal"])


#LIST

# List disimpan dalam variable dengan nama list_random
list_random <- list(2, "Budi", 4)

# Menampilkan isi list
list_random 

# List disimpan dalam variable dengan nama dati2
dati2 <- list(nama = "Denpasar", propinsi = "Bali")

# Menampilkan isi list dati2
dati2 

# Buat variable kota sesuai permintaan soal
kota <- list(nama_kota="Makassar",propinsi="Sulawesi Selatan",luas_km2=199.3)
# Tampilkan isi variable list kota
list(kota)


#List Index

# Membentuk list dengan 2 angka dan 1 character
list_saya <- list(2, "Budi", 4)

# Menampilkan index kedua dengan aksesor kurung siku tunggal 
list_saya[2]

# Menampilkan index kedua dengan aksesor kurung siku ganda
list_saya[[2]]

# Menampilkan index kedua s/d ketiga
list_saya[2:3]

list_satu <-list(1,"Online",TRUE)
list_saya[1]


DATA FRAME

Data frame adalah jenis struktur data yang dirancang untuk representasi table,
yang terdiri daribanyak kolom dengan tiap kolom berisi list ataupun vector dengan 
jumlah data yang sama.

#Membuat dua variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)

#Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa)

#Melihat isi data frame
info_mahasiswa

#Buat vector baru sebagai representasi akreditasi
akreditasi <-data.frame("A","A","B","A","A")
#Buat data frame dari ketiga vector di atas
info_mahasiswa <-data.frame(info_mahasiswa,akreditasi)
info_mahasiswa


library ggplot2

fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)

akreditasi <- c("A","A","B","A","A")

info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
info_mahasiswa

#Menggunakan package ggplot2
library("ggplot2")
#Membuat kanvas
gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))
gambar <- gambar + geom_bar(width=1, stat="identity")
gambar





#Membuat dua vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

#Buat data frame dari ketiga vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
info_mahasiswa

#Menggunakan package ggplot2
library(ggplot2)

#Membuat kanvas
gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))

#Menambahkan objek bar chart, simpan kembali sebagai variable gambar
gambar <- gambar + geom_bar(width=1, stat="identity")

#Menambahkan judul grafik
gambar <- gambar + ggtitle("Jumlah Mahasiswa per Fakultas")
#Menambahkan caption pada sumbu x
gambar <- gambar + xlab("Nama Fakultas")
#Menambahkan caption pada sumbu y
gambar <- gambar + ylab("Julmah Mahasiswa")
#Menggambar grafik
gambar


#Membaca File dari Excel

#Menggunakan package ggplot2
library(ggplot2)
#Menggunakan package openxlsx
library(openxlsx)

#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menampilkan data
print(mahasiswa)

#Menampilkan kolom Prodi
print(mahasiswa$ Prodi)



# Trend Mahasiswa dari tahun ke tahun
library(ggplot2)
#Menggunakan package openxlsx
library(openxlsx)

#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, by=list(Kategori=mahasiswa$Fakultas, Tahun=mahasiswa$ANGKATAN), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","tahun", "jumlah_mahasiswa"))
summarybyfakultas

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)

ggplot(summarybyfakultas, aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat = "identity", aes(fill = tahun), width=0.8, position = position_dodge(width=0.8)) + 
  theme_classic() 

PIE chartr

library(ggplot2)
library(openxlsx)
#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, by=list(Kategori=mahasiswa$Fakultas), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","jumlah_mahasiswa"))

piechart<- ggplot(summarybyfakultas, aes(x="", y=jumlah_mahasiswa, fill=fakultas))+ geom_bar(width = 1, stat = "identity")
piechart <- piechart + coord_polar("y", start=0)
piechart <- piechart + ggtitle("Disribusi Mahasiswa per Fakultas")
piechart <- piechart + scale_fill_brewer(palette="Blues")+ theme_minimal()
piechart <- piechart + guides(fill=guide_legend(title="Fakultas"))
piechart <- piechart + ylab("Jumlah Mahasiswa") 
piechart

#FILTERING

library("ggplot2")
library("openxlsx")

#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://academy.dqlab.id/dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, by=list(Kategori=mahasiswa$Fakultas, Tahun=mahasiswa$ANGKATAN), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","tahun", "jumlah_mahasiswa"))
summarybyfakultas

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)
summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),]

ggplot(summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),], aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat = "identity", aes(fill = tahun), width=0.8, position = position_dodge(width=0.8)) + 
  theme_classic() 

