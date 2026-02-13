#!/bin/bash

# ============================================================
# SKRIP INI DI-REMAKE OLEH SANO OFFICIAL (TELEGRAM: @sanoofc)
# DILARANG UNTUK MEMPERJUALBELIKAN SKRIP INI, APALAGI MEMBAGIKANNYA SECARA GRATIS!
# GAK USAH NGEYEL! NGEYEL? MATI AJA LU, HIDUP LU GAK GUNA, KERJAANNYA CUMA MALING SC, JUAL/SHARE SC HASIL MALING
# ============================================================

echo "Masukkan nama location (contoh: SGP): "
read location_name
echo "Masukkan id location (contoh: 1): "
read locid
echo "Masukkan nama node (contoh: Nodes): "
read node_name
echo "Masukkan deskripsi (contoh: Panel by Sano Official): "
read description
echo "Masukkan domain node (contoh: nodepanel.example.com): "
read domain
echo "Masukkan RAM (dalam MB): "
read ram
echo "Masukkan jumlah maksimum disk space (dalam MB): "
read disk_space

cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; exit 1; }

echo "Membuat Location..."
php artisan p:location:make --short="$location_name" --long="$description"

echo "Membuat Node..."
php artisan p:node:make \
  --name="$node_name" \
  --description="$description" \
  --location_id="$locid" \
  --scheme="https" \
  --fqdn="$domain" \
  --public=1 \
  --behind_proxy=0 \
  --maintenance_mode=0 \
  --memory="$ram" \
  --memory_overallocate=0 \
  --disk="$disk_space" \
  --disk_overallocate=0 \
  --upload_size=100 \
  --daemon_listening_port=8080 \
  --daemon_sftp_port=2022 \
  --daemon_base="/var/lib/pterodactyl/volumes"

echo " "
echo "Mengambil konfigurasi otomatis untuk Wings..."
export DB_HOST=$(grep "DB_HOST" .env | cut -d "=" -f2)
export DB_DATABASE=$(grep "DB_DATABASE" .env | cut -d "=" -f2)
export DB_USERNAME=$(grep "DB_USERNAME" .env | cut -d "=" -f2)
export DB_PASSWORD=$(grep "DB_PASSWORD" .env | cut -d "=" -f2)
NODE_ID=$(mysql -u "$DB_USERNAME" -p"$DB_PASSWORD" -h "$DB_HOST" -D "$DB_DATABASE" -N -e "SELECT id FROM nodes ORDER BY id DESC LIMIT 1;")
if [ -z "$NODE_ID" ]; then
    echo "❌ Gagal mendapatkan Node ID dari database."
    echo "⚠️  Silakan konfigurasi Wings secara manual."
else
    echo "✅ Node ID terdeteksi: $NODE_ID"
    echo "Membuat file konfigurasi..."
    mkdir -p /etc/pterodactyl
    php artisan p:node:configuration "$NODE_ID" > /etc/pterodactyl/config.yml

    echo "Menyalakan Wings..."
    systemctl daemon-reload
    systemctl enable wings
    systemctl restart wings
    sleep 2
    if systemctl is-active --quiet wings; then
        echo " "
        echo -e "\e[1;32m[SUKSES] Wings berhasil dikonfigurasi dan AKTIF (Online)!\e[0m"
    else
        echo " "
        echo -e "\e[1;31m[WARNING] Wings gagal start otomatis. Cek 'systemctl status wings' untuk detail.\e[0m"
    fi
fi

echo " "
echo "Proses pembuatan location dan node telah selesai."
