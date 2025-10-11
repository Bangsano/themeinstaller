#!/bin/bash

# Color
BOLD='\033[1m'
CYAN='\033[0;36m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'       
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

print_info() {
  echo -e "${BOLD}${CYAN}$1${NC}"
}

print_success() {
  echo -e "${BOLD}${GREEN}$1${NC}"
}

print_error() {
  echo -e "${BOLD}${RED}$1${NC}"
}

# Display welcome message
display_welcome() {
  clear
  echo -e ""
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                                                 [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                AUTO INSTALLER THEME             [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                  © SANO OFFICIAL                [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                                                 [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e ""
  echo -e "script ini dibuat untuk mempermudah penginstalasian tema pterodactyl,"
  echo -e "Dilarang Keras Share Bebas."
  echo -e ""
  echo -e "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠: @batuofc"
  sleep 4
}

#Update and install jq
install_jq() {
  clear
  echo -e "                                                       "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]             UPDATE & INSTALL JQ                 [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  (sudo apt update && sudo apt install -y jq) > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo -e "                                                       "
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${BOLD}${GREEN}[+]              INSTALL JQ BERHASIL                [+]${NC}"
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  else
    echo -e "                                                       "
    echo -e "${BOLD}${RED}[+] =============================================== [+]${NC}"
    echo -e "${BOLD}${RED}[+]              INSTALL JQ GAGAL                   [+]${NC}"
    echo -e "${BOLD}${RED}[+] =============================================== [+]${NC}"
    exit 1
  fi
  echo -e "                                                       "
  sleep 1
}

#Check user token
check_token() {
  clear
  echo -e "                                                       "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]              SANO OFFICIAL LICENSE            [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  echo -e "${BOLD}${YELLOW}MASUKKAN AKSES TOKEN: ${NC}"
  read -r USER_TOKEN

  if [ "$USER_TOKEN" = "sanoofc" ]; then
    echo -e "${BOLD}${GREEN}AKSES BERHASIL${NC}}"
  else
    echo -e "${BOLD}${GREEN}Token yang anda masukkan salah.${NC}"
    exit 1
  fi
}

# Install theme
install_theme() {
  clear
  local SELECT_THEME
  local THEME_NAME
  local THEME_URL

  # ... (Blok menu 'while true' Anda tidak perlu diubah, sudah benar) ...
  while true; do
    echo " "
    print_info "[+] =============================================== [+]"
    print_info "[+]                   SELECT THEME                  [+]"
    print_info "[+] =============================================== [+]"
    echo " "
    echo -e "${BOLD}--- THEME MANUAL ---${NC}"
    echo -e "${BOLD} 1. Stellar${NC}"
    echo -e "${BOLD} 2. Billing${NC}"
    echo -e "${BOLD} 3. Enigma${NC}"
    echo -e "${BOLD} 4. Elysium${NC}"
    echo -e "${BOLD} 5. Nightcore${NC}"
    echo -e "${BOLD} 6. Ice${NC}"
    echo -e "${BOLD} 7. Noobe${NC}"
    echo -e "${BOLD} 8. Nookure${NC}"
    echo -e "${BOLD} 9. Arix${NC}"
    echo " "
    print_info "[+] =============================================== [+]"
    echo " "
    echo -e "${BOLD}--- THEME BLUEPRINT (Wajib install Opsi #8 dari menu utama) ---${NC}"
    echo -e "${BOLD} 10. Nebula${NC}"
    echo -e "${BOLD} 11. Recolor${NC}"
    echo " "
    echo -e "${BOLD} x. Kembali${NC}"
    echo -n -e "${BOLD}Masukkan pilihan (1-11 atau x): ${NC}"
    read SELECT_THEME
    case "$SELECT_THEME" in
      1) THEME_NAME="Stellar"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/stellar.zip"; break;;
      2) THEME_NAME="Billing"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/billing.zip"; break;;
      3) THEME_NAME="Enigma"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/enigma.zip"; break;;
      4) THEME_NAME="Elysium"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/elysium.zip"; break;;
      5) THEME_NAME="Nightcore"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/nightcore.zip"; break;;
      6) THEME_NAME="Ice"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/ice.zip"; break;;
      7) THEME_NAME="Noobe"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/noobe.zip"; break;;
      8) THEME_NAME="Nookure"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/nookure.zip"; break;;
      9) THEME_NAME="Arix"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/arix.zip"; break;;
      10) THEME_NAME="Nebula"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/nebula.zip"; break;;
      11) THEME_NAME="Recolor"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/recolor.zip"; break;;
      x) echo -e "${BOLD}Instalasi dibatalkan.${NC}"; return;;
      *) print_error "Pilihan tidak valid, silahkan coba lagi.";;
    esac
  done

  # ... (Blok konfirmasi, setup, dan unduh tidak berubah) ...
  echo " "
  echo -n -e "${BOLD}Anda memilih untuk menginstal tema '$THEME_NAME'. Lanjutkan? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then echo -e "${BOLD}Instalasi dibatalkan.${NC}"; return; fi
  set -e
  export DEBIAN_FRONTEND=noninteractive
  export NEEDRESTART_MODE=a
  TEMP_DIR=$(mktemp -d)
  trap 'rm -rf -- "$TEMP_DIR"' EXIT
  cd "$TEMP_DIR"
  print_info "Memulai instalasi tema $THEME_NAME..."
  if [ "$SELECT_THEME" -eq 3 ]; then # Khusus Enigma
      YELLOW='\033[1;33m';
      echo -n -e "${BOLD}${YELLOW}Masukkan link whatsapp (https://wa.me/...): ${NC}"; read LINK_WA
      echo -n -e "${BOLD}${YELLOW}Masukkan link channel whatsapp (https://whatsapp.com/channel/...): ${NC}"; read LINK_CHANNEL
      echo -n -e "${BOLD}${YELLOW}Masukkan link grup whatsapp (https://chat.whatsapp.com/...): ${NC}"; read LINK_GROUP
  fi
  print_info "[1/4] Mengunduh file tema..."
  wget -q "$THEME_URL"
  local THEME_ZIP_FILE=$(basename "$THEME_URL")
  print_info "[2/4] Mengekstrak file tema..."
  unzip -oq "$THEME_ZIP_FILE" || true

  if [ "$SELECT_THEME" -eq 10 ] || [ "$SELECT_THEME" -eq 11 ]; then
    # --- JALUR INSTALASI BLUEPRINT ---
    # ... (Blok ini sudah benar dan tidak diubah) ...
    print_info "[3/4] Mempersiapkan instalasi Blueprint..."
    if [ ! -f "/var/www/pterodactyl/blueprint.sh" ]; then print_error "❌ ERROR: Blueprint belum terinstall."; return 1; fi
    THEME_NAME_LOWER=$(echo "$THEME_NAME" | tr '[:upper:]' '[:lower:]')
    BLUEPRINT_FILE="${THEME_NAME_LOWER}.blueprint"
    sudo mv "$BLUEPRINT_FILE" /var/www/pterodactyl/
    print_info "[4/4] Menjalankan instalasi tema via Blueprint..."
    cd /var/www/pterodactyl
    sudo blueprint --no-interaction -install "$THEME_NAME_LOWER"
    sudo chown -R www-data:www-data /var/www/pterodactyl/*
    sudo rm "/var/www/pterodactyl/$BLUEPRINT_FILE"
  else
    # --- JALUR INSTALASI MANUAL ---
    if [ "$SELECT_THEME" -eq 3 ]; then # Khusus Enigma
      print_info "Mengkonfigurasi link untuk tema Enigma..."
      sed -i "s|LINK_WA|$LINK_WA|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
      sed -i "s|LINK_CHANNEL|$LINK_CHANNEL|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
      sed -i "s|LINK_GROUP|$LINK_GROUP|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    fi
    print_info "[3/4] Menyalin file & membangun aset..."
    sudo cp -rfT pterodactyl /var/www/pterodactyl
    sudo apt-get update > /dev/null 2>&1
    sudo apt-get install -y nodejs > /dev/null 2>&1
    sudo npm i -g yarn > /dev/null 2>&1
    cd /var/www/pterodactyl

    # <-- DIPERBAIKI: Blok khusus untuk Arix dengan patch resolusi
    if [ "$SELECT_THEME" -eq 9 ]; then # Khusus Arix
      print_info "Menerapkan patch resolusi untuk tema Arix..."
      # Perintah ini memaksa yarn untuk menggunakan versi styled-components yang benar
      sudo jq '.resolutions as $r | .resolutions = ({ "styled-components": "5.3.10" } + $r)' package.json > tmp.$$.json && sudo mv tmp.$$.json package.json
    fi
    # ---------------------------------------------------
    
    print_info "Menginstal dependensi Node.js..."
    yarn > /dev/null 2>&1
    yarn add react-feather > /dev/null 2>&1
    
    if [ "$SELECT_THEME" -eq 2 ]; then # Khusus Billing
      print_info "Menjalankan instalasi spesifik untuk Billing..."
      export NODE_OPTIONS=--openssl-legacy-provider && php artisan billing:install stable > /dev/null 2>&1
    fi

    print_info "Menjalankan migrasi, build, dan optimisasi..."
    php artisan migrate --force > /dev/null 2>&1
    export NODE_OPTIONS=--openssl-legacy-provider && yarn build:production > /dev/null 2>&1
    php artisan view:clear > /dev/null 2>&1
    php artisan optimize:clear > /dev/null 2>&1
    print_info "[4/4] Membersihkan file sisa..."
  fi
  
  # ... (Pesan sukses tidak berubah) ...
  echo " "
  print_success "[+] =============================================== [+]"
  print_success "[+]           INSTALASI BERHASIL SELESAI            [+]"
  print_success "[+] =============================================== [+]"
  echo " "
  sleep 3
  return 0
}

# Uninstall theme
uninstall_theme() {
  clear
  echo " "
  print_info "[+] =============================================== [+]"
  print_info "[+]        RESET TOTAL PANEL (UNINSTALL THEME)        [+]"
  print_info "[+] =============================================== [+]"
  echo " "
  echo -e "${BOLD}${YELLOW}PERINGATAN:${NC} ${BOLD}Proses ini akan MENGHAPUS TOTAL semua file panel,${NC}"
  echo -e "${BOLD}sehingga semua tema kustom atau tools lainnya akan terhapus.${NC}"
  echo " "

  while true; do
    echo -n -e "${BOLD}Apakah Anda benar-benar yakin ingin melanjutkan? (y/n): ${NC}"
    read yn
    
    case $yn in
      [Yy]*)
        set -e
        if [ ! -d "/var/www/pterodactyl" ]; then
            print_error "🚨 ERROR: Direktori instalasi Pterodactyl tidak ditemukan."
            return 1
        fi
        cd /var/www/pterodactyl || { print_error "Gagal masuk ke direktori Pterodactyl."; return 1; }

        echo -e "${BOLD}⚙️  Memulai proses reset panel...${NC}"

        echo -e "${BOLD}   - Mem-backup file .env...${NC}"
        TEMP_BACKUP=$(mktemp -d)
        if [ -f ".env" ]; then sudo mv .env "$TEMP_BACKUP/"; fi

        echo -e "${BOLD}   - Menghapus semua file panel lama...${NC}"
        sudo find . -mindepth 1 -delete
        
        echo -e "${BOLD}   - Mengunduh panel original terbaru...${NC}"
        curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | sudo tar -xzf - -C /var/www/pterodactyl > /dev/null 2>&1
    
        echo -e "${BOLD}   - Mengembalikan file .env...${NC}"
        if [ -f "$TEMP_BACKUP/.env" ]; then sudo mv "$TEMP_BACKUP"/.env .; fi
        rm -rf "$TEMP_BACKUP"

        echo -e "${BOLD}   - Mengatur kepemilikan file ke 'www-data'...${NC}"
        sudo chown -R www-data:www-data /var/www/pterodactyl/*

        echo -e "${BOLD}   - Menginstal dependensi & menjalankan migrasi...${NC}"
        sudo -u www-data composer install --no-dev --optimize-autoloader > /dev/null 2>&1
        sudo -u www-data php artisan migrate --seed --force > /dev/null 2>&1
        sudo -u www-data php artisan view:clear > /dev/null 2>&1
        sudo -u www-data php artisan config:clear > /dev/null 2>&1
        
        echo -e "${BOLD}   - Membersihkan shortcut Blueprint (jika ada)...${NC}"
        sudo rm -f /usr/local/bin/blueprint
        
        break
        ;;
      [Nn]*)
        echo -e "\n${BOLD}❌ Pembatalan oleh pengguna.${NC}"
        return
        ;;
      *)
        echo -e "\n${BOLD}Pilihan tidak valid! Silahkan pilih (y) atau (n).${NC}"
        ;;
    esac
  done

  echo " "
  print_success "[+] =============================================== [+]"
  print_success "[+]          PANEL BERHASIL DI-RESET TOTAL          [+]"
  print_success "[+] =============================================== [+]"
  echo " "
  sleep 3
  return 0
}

# Cretae
create_node() {
  clear
  set -e
  echo " "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]             MEMULAI CREATE NODE SCRIPT            [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo " "

  bash <(curl -s https://raw.githubusercontent.com/Bangsano/themeinstaller/main/createnode.sh)

  # Cek status eksekusi terakhir. Jika gagal, tampilkan pesan error.
  if [ $? -ne 0 ]; then
    echo -e "\n${BOLD}🚨 TERJADI ERROR saat menjalankan skrip 'createnode.sh'.${NC}"
    return 1 # Keluar dari fungsi dengan status error
  fi

  echo " "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]          CREATE NODE & LOCATION SUCCESS          [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo " "
  sleep 3
  return 0
}

uninstall_panel() {
  clear
  set -e
  echo -e "                                                       "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                    UNINSTALL PANEL                 [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "

bash <(curl -s https://pterodactyl-installer.se) <<EOF
6
y
y
y


EOF

  echo -e "                                                       "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]               UNINSTALL PANEL SUKSES               [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 3
  return 0
}

configure_wings() {
  clear
  echo -e "                                                       "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                    CONFIGURE WINGS                    [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  read -p "Masukkan token Configure menjalankan wings: " wings
  eval "$wings"
  sudo systemctl start wings
  echo -e "                                                       "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]               CONFIGURE WINGS SUKSES               [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 3
  return 0
}

hackback_panel() {
  clear
  echo -e "                                                       "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                    HACK BACK PANEL                 [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  read -p "Masukkan Username Panel: " user
  read -p "password login: " psswdhb
  cd /var/www/pterodactyl || { echo "Direktori tidak ditemukan"; return 1; }
  php artisan p:user:make <<EOF
yes
$user@admin.com
$user
$user
$user
$psswdhb
EOF
  echo -e "                                                       "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]                 AKUN TELAH DI ADD             [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 3
  return 0
}

ubahpw_vps() {
  clear
  echo -e "                                                       "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]                  UBAH PASSWORD VPS                    [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  read -p "Masukkan Pw Baru: " pw
  read -p "Masukkan Ulang Pw Baru " pw
  passwd <<EOF
$pw
$pw

EOF


  echo -e "                                                       "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]                 GANTI PW VPS SUKSES                    [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 3
  return 0
}

# Install Dependencies Blueprint
install_depend() {
    export DEBIAN_FRONTEND=noninteractive
    export NEEDRESTART_MODE=a

    clear
    set -e
    echo -e "                                                       "
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${BOLD}${GREEN}[+]           INSTALL NODE.JS & BLUEPRINT           [+]${NC}"
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    echo -n -e "${BOLD}Apakah anda yakin ingin melanjutkannya? (y/n): ${NC}"
    read confirmation
    if [[ "$confirmation" != [yY] ]]; then
        echo -e "${BOLD}Instalasi dibatalkan.${NC}"
        return
    fi
    # 1. Menginstal semua dependensi dasar
    echo -e "${BOLD}⚙️  Menginstal dependensi dasar (curl, gnupg, git, dll)...${NC}"
    sudo apt-get update > /dev/null 2>&1
    sudo apt-get install -y ca-certificates curl gnupg zip unzip git wget > /dev/null 2>&1

    # 2. Menyiapkan repositori Node.js v20.x
    echo -e "${BOLD}⚙️  Menyiapkan repositori Node.js v20.x...${NC}"
    sudo mkdir -p /etc/apt/keyrings
    # <-- DIPERBAIKI: Menggunakan 'tee' untuk menimpa file GPG tanpa bertanya
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor | sudo tee /etc/apt/keyrings/nodesource.gpg > /dev/null
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list > /dev/null

    # 3. Menginstal Node.js dan Yarn
    echo -e "${BOLD}⚙️  Menginstal Node.js dan Yarn...${NC}"
    sudo apt-get update > /dev/null 2>&1
    sudo apt-get install -y nodejs > /dev/null 2>&1
    sudo npm i -g yarn > /dev/null 2>&1

    # 4. Menginstal dependensi Pterodactyl
    echo -e "${BOLD}⚙️  Menginstal dependensi Pterodactyl di /var/www/pterodactyl...${NC}"
    cd /var/www/pterodactyl
    yarn > /dev/null 2>&1
    yarn add cross-env > /dev/null 2>&1

    # 5. Mengunduh dan menginstal Blueprint Framework
    echo -e "${BOLD}⚙️  Mengunduh dan menginstal Blueprint Framework...${NC}"
    wget -q "$(curl -s https://api.github.com/repos/BlueprintFramework/framework/releases/latest | grep 'browser_download_url' | cut -d '"' -f 4)" -O /tmp/release.zip
    unzip -oq /tmp/release.zip -d /var/www/pterodactyl
    rm /tmp/release.zip

    # 6. Menjalankan Blueprint
    cd /var/www/pterodactyl
    sed -i -E -e "s|WEBUSER=\"www-data\" #;|WEBUSER=\"www-data\" #;|g" \
               -e "s|USERSHELL=\"/bin/bash\" #;|USERSHELL=\"/bin/bash\" #;|g" \
               -e "s|OWNERSHIP=\"www-data:www-data\" #;|OWNERSHIP=\"www-data:www-data\" #;|g" blueprint.sh
    chmod +x blueprint.sh
    
    echo -e "${BOLD}⚙️  Menjalankan blueprint.sh...${NC}"
    yes | sudo bash blueprint.sh

    # ... (Pesan sukses tidak berubah) ...
    echo -e "                                                       "
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${BOLD}${GREEN}[+]        INSTALLASI NODE.JS & BLUEPRINT SELESAI   [+]${NC}"
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
    echo -e "                                                       "

    sleep 3
    return 0
}

# install auto suspend
install_auto_suspend() {
  clear
  set -e
  echo " "
  print_info "[+] =============================================== [+]"
  print_info "[+]            INSTALL FITUR AUTO SUSPEND           [+]"
  print_info "[+] =============================================== [+]"
  echo " "
  echo -e "${BOLD}Fitur ini akan menambahkan fungsionalitas auto-suspend ke panel Anda.${NC}"
  echo -n -e "${BOLD}Pastikan Anda sudah memiliki backup. Lanjutkan? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then
    echo -e "${BOLD}Instalasi dibatalkan.${NC}"
    return
  fi

  TEMP_DIR=$(mktemp -d)
  trap 'rm -rf -- "$TEMP_DIR"' EXIT
  cd "$TEMP_DIR"

  print_info "Mengunduh file autosuspend.zip..."
  wget -q https://github.com/Bangsano/themeinstaller/raw/main/autosuspend.zip
  
  print_info "Mengekstrak file..."
  # <-- DIPERBAIKI: Ditambahkan flag -q (quiet) agar senyap
  unzip -oq autosuspend.zip
  
  print_info "Menyalin file migrasi dan installer..."
  sudo cp -rfT pterodactyl /var/www/pterodactyl
  
  cd /var/www/pterodactyl
  
  print_info "Menjalankan skrip autosuspend (installer.sh)..."
  # <-- DIPERBAIKI: Ditambahkan pengalihan output agar senyap
  sudo bash installer.sh <<EOF > /dev/null 2>&1
y
EOF

  echo " "
  print_success "[+] =============================================== [+]"
  print_success "[+]        FITUR AUTO SUSPEND BERHASIL DIINSTALL      [+]"
  print_success "[+] =============================================== [+]"
  echo " "
  sleep 3
  return 0
}

# Main script
display_welcome
install_jq

while true; do
  echo -e "\n  "
  echo -e "${BOLD}${CYAN}        _,gggggggggg.${NC}"
  echo -e "${BOLD}${CYAN}    ,ggggggggggggggggg.${NC}"
  echo -e "${BOLD}${CYAN}  ,ggggg        gggggggg.${NC}"
  echo -e "${BOLD}${CYAN} ,ggg'               'ggg.${NC}"
  echo -e "${BOLD}${CYAN}',gg       ,ggg.      'ggg:${NC}"
  echo -e "${BOLD}${CYAN}'ggg      ,gg'''  .    ggg${NC}     ${BOLD}${BLUE}Auto Installer Theme Pterodactyl${NC}"
  echo -e "${BOLD}${CYAN}gggg      gg     ,    ggg${NC}      ${BOLD}${BLUE}By Sano Official${NC}"
  echo -e "${BOLD}${CYAN}ggg:     gg.     -   ,ggg${NC}       ${BOLD}${GREEN}----------------------------------${NC}"
  echo -e "${BOLD}${CYAN} ggg:     ggg._    _,ggg${NC}       ${BOLD}${BLUE}Telegram : @batuofc${NC}"
  echo -e "${BOLD}${CYAN} ggg.    '.'''ggggggp${NC}"
  echo -e "${BOLD}${CYAN}  'ggg    '-.__${NC}"
  echo -e "${BOLD}${CYAN}    ggg${NC}"
  echo -e "${BOLD}${CYAN}      ggg${NC}"
  echo -e "${BOLD}${CYAN}        ggg.${NC}"
  echo -e "${BOLD}${CYAN}          ggg.${NC}"
  echo -e "${BOLD}${CYAN}             b.${NC}"
  echo -e "  "
  echo -e "${BOLD} BERIKUT ADALAH LIST FITUR:${NC}"
  echo -e "${BOLD} 1. Install Themes (Stellar, Elysium, Nebula, dll)${NC}"
  echo -e "${BOLD} 2. Reset Panel (menghapus semua modifikasi panel seperti tema kustom atau tools lainnya)${NC}"
  echo -e "${BOLD} 3. Configure Wings${NC}"
  echo -e "${BOLD} 4. Create Node & Location${NC}"
  echo -e "${BOLD} 5. Uninstall Panel${NC}"
  echo -e "${BOLD} 6. Hack Back Panel${NC}"
  echo -e "${BOLD} 7. Ubah Password VPS${NC}"
  echo -e "${BOLD} 8. Install Dependencies (Blueprint)${NC}"
  echo -e "${BOLD} 9. Install Fitur Auto Suspend${NC}" # <-- DITAMBAHKAN
  echo -e "${BOLD} x. Exit${NC}"
  echo " "
  
  echo -n -e "${BOLD}Masukkan pilihan (1-9 atau x): ${NC}" # <-- DIUBAH
  read -r MENU_CHOICE
  clear

  case "$MENU_CHOICE" in
    1)
      install_theme
      ;;
    2)
      uninstall_theme
      ;;
    3)
      configure_wings
      ;;
    4)
      create_node
      ;;
    5)
      uninstall_panel
      ;;
    6)
      hackback_panel
      ;;
    7)
      ubahpw_vps
      ;;
    8)
      install_depend
      ;;
    9)
      install_auto_suspend
      ;;
    x)
      echo -e "${BOLD}Keluar dari skrip. Terima kasih!${NC}"
      exit 0
      ;;
    *)
      print_error "Pilihan tidak valid, silahkan coba lagi."
      sleep 2
      ;;
  esac
done
