#!/bin/bash

# ============================================================
# SKRIP INI DI-REMAKE OLEH SANO OFFICIAL (TELEGRAM: @batuofc)
# DILARANG UNTUK MEMPERJUALBELIKAN SKRIP INI, APALAGI MEMBAGIKANNYA SECARA GRATIS!
# GAK USAH NGEYEL! NGEYEL? MATI AJA LU, HIDUP LU GAK GUNA, KERJAANNYA CUMA MALING SC, JUAL/SHARE SC HASIL MALING
# ============================================================

echo "Masukkan nama lokasi: "
read location_name
echo "Masukkan deskripsi lokasi: "
read location_description
echo "Masukkan domain: "
read domain
echo "Masukkan nama node: "
read node_name
echo "Masukkan RAM (dalam MB): "
read ram
echo "Masukkan jumlah maksimum disk space (dalam MB): "
read disk_space
echo "Masukkan Locid: "
read locid
cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }
php artisan p:location:make <<EOF
$location_name
$location_description
EOF
php artisan p:node:make <<EOF
$node_name
$location_description
$locid
https
$domain
yes
no
no
$ram
$ram
$disk_space
$disk_space
100
8080
2022
/var/lib/pterodactyl/volumes
EOF
echo "Proses pembuatan lokasi dan node telah selesai."
