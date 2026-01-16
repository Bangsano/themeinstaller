#!/bin/bash

# ============================================================
# SKRIP INI DIBUAT OLEH SANO OFFICIAL
# TELEGRAM: @batuofc
# DISARANKAN GAK USAH NYOLONG!
# LEBIH BAIK LANGSUNG PAKE AJA, KALO EROR BIAR GW (SANO) YANG BENERINNYA, LU TINGGAL LAPOR AJA KE TELEGRAM.
# ============================================================

# Reset
NC='\033[0m'

# Style
BOLD='\033[1m'
DIM='\033[2m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
REVERSE='\033[7m'
HIDDEN='\033[8m'

# Foreground (Text Color Normal)
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# Foreground (Text Color Bright/Bold)
BRIGHT_BLACK='\033[90m'
BRIGHT_RED='\033[91m'
BRIGHT_GREEN='\033[92m'
BRIGHT_YELLOW='\033[93m'
BRIGHT_BLUE='\033[94m'
BRIGHT_MAGENTA='\033[95m'
BRIGHT_CYAN='\033[96m'
BRIGHT_WHITE='\033[97m'

# Background Colors (Normal)
BG_BLACK='\033[40m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_MAGENTA='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'

# Background Colors (Bright)
BG_BRIGHT_BLACK='\033[100m'
BG_BRIGHT_RED='\033[101m'
BG_BRIGHT_GREEN='\033[102m'
BG_BRIGHT_YELLOW='\033[103m'
BG_BRIGHT_BLUE='\033[104m'
BG_BRIGHT_MAGENTA='\033[105m'
BG_BRIGHT_CYAN='\033[106m'
BG_BRIGHT_WHITE='\033[107m'

print_info() {
  echo -e "\n  ${BG_BLUE}${BRIGHT_WHITE}${BOLD} INFO ${NC} ${BOLD}$1${NC}\n"
}

print_success() {
  echo -e "\n  ${BG_GREEN}${BRIGHT_WHITE}${BOLD} SUCCESS ${NC} ${BOLD}$1${NC}\n"
}

print_warning() {
  echo -e "\n  ${BG_YELLOW}${BRIGHT_WHITE}${BOLD} WARNING ${NC} ${BOLD}$1${NC}\n"
}

print_error() {
  echo -e "\n  ${BG_RED}${BRIGHT_WHITE}${BOLD} ERROR ${NC} ${BOLD}$1${NC}\n"
}

log_info() {
  echo -e "${BOLD}${CYAN}$1${NC}"
}

log_success() {
  echo -e "${BOLD}${GREEN}$1${NC}"
}

log_error() {
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
  echo -e "Script ini dibuat untuk mempermudah penginstalasian tema pterodactyl."
  echo -e "Mengalami eror? Lapor ke admin agar diperbaiki."
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
  
  export DEBIAN_FRONTEND=noninteractive
  export NEEDRESTART_MODE=a
  (sudo apt update && sudo apt install -y jq)
  
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
  clear
}

#Check user token
check_token() {
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
  clear
}

# Install theme
install_theme() {
  local SELECT_THEME
  local THEME_NAME
  local THEME_URL

  while true; do
    clear
    echo " "
    echo -e "${BRIGHT_BLUE}${BOLD}[+] ================================================== [+]${NC}"
    echo -e "${BRIGHT_BLUE}${BOLD}[+]${NC} ${BG_BLUE}${BRIGHT_WHITE}${BOLD}                       SELECT THEME                   ${NC} ${BRIGHT_BLUE}${BOLD}[+]${NC}"
    echo -e "${BRIGHT_BLUE}${BOLD}[+] ================================================== [+]${NC}"
    echo " "
    echo -e "${BRIGHT_CYAN}${BOLD}--- STANDARD THEME ---${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[1]${NC} ${WHITE}Stellar${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[2]${NC} ${WHITE}Billing${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[3]${NC} ${WHITE}Enigma${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[4]${NC} ${WHITE}Elysium${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[5]${NC} ${WHITE}Nightcore${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[6]${NC} ${WHITE}Ice${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[7]${NC} ${WHITE}Noobe${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[8]${NC} ${WHITE}Nookure${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[9]${NC} ${WHITE}Reviactyl${NC}"
    echo " "
    echo -e "${BRIGHT_MAGENTA}${BOLD}--- BLUEPRINT THEME ---${NC}"
    echo -e "${BG_RED}${BRIGHT_WHITE} (!) WAJIB INSTALL BLUEPRINT DULU (OPSI #2 DI MENU UTAMA) ${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[10]${NC} ${WHITE}Nebula${NC}"
    echo -e " ${BRIGHT_WHITE}${BOLD}[11]${NC} ${WHITE}Recolor${NC}"
    echo " "
    echo -e " ${BRIGHT_WHITE}[x]${NC} ${WHITE}Kembali ke Menu Utama${NC}"
    echo " "
    echo -n -e "${BOLD}Masukkan pilihan (1-11 atau x)${NC}${BOLD}: ${NC}"
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
      9) THEME_NAME="Reviactyl"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/reviactyl.zip"; break;;
      10) THEME_NAME="Nebula"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/nebula.zip"; break;;
      11) THEME_NAME="Recolor"; THEME_URL="https://github.com/Bangsano/themeinstaller/raw/main/theme/recolor.zip"; break;;
      x) echo -e "${BOLD}Instalasi dibatalkan.${NC}"; return;;
      *) print_error "Pilihan tidak valid, silahkan coba lagi.";;
    esac
  done

  echo " "
  echo -n -e "${BOLD}Anda memilih tema '$THEME_NAME'. Lanjutkan? (y/n): ${NC}"
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
      echo -n -e "${BOLD}Masukkan link whatsapp: ${NC}"; read LINK_WA
      echo -n -e "${BOLD}Masukkan link channel whatsapp: ${NC}"; read LINK_CHANNEL
      echo -n -e "${BOLD}Masukkan link grup whatsapp: ${NC}"; read LINK_GROUP
  fi

  print_info "[1/4] Mengunduh file tema..."
  wget -q "$THEME_URL"
  local THEME_ZIP_FILE=$(basename "$THEME_URL")
  
  print_info "[2/4] Mengekstrak file tema..."
  unzip -oq "$THEME_ZIP_FILE" || true

  if [ "$SELECT_THEME" -eq 10 ] || [ "$SELECT_THEME" -eq 11 ]; then
    # --- JALUR BLUEPRINT ---
    print_info "[3/4] Menyiapkan Blueprint..."
    if [ ! -f "/var/www/pterodactyl/blueprint.sh" ]; then print_error "Blueprint belum terinstall."; return 1; fi
    THEME_NAME_LOWER=$(echo "$THEME_NAME" | tr '[:upper:]' '[:lower:]')
    BLUEPRINT_FILE="${THEME_NAME_LOWER}.blueprint"
    sudo mv "$BLUEPRINT_FILE" /var/www/pterodactyl/
    
    print_info "[4/4] Menginstall via Blueprint..."
    cd /var/www/pterodactyl
    sudo blueprint -install "$THEME_NAME_LOWER"
    sudo chown -R www-data:www-data /var/www/pterodactyl
    sudo rm "/var/www/pterodactyl/$BLUEPRINT_FILE"
    print_success "Tema '$THEME_NAME' berhasil diinstall."
  else
    # --- JALUR MANUAL ---
    if [ "$SELECT_THEME" -eq 3 ]; then # Khusus Enigma
      print_info "Mengkonfigurasi variabel Enigma..."
      sed -i "s|LINK_WA|$LINK_WA|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
      sed -i "s|LINK_CHANNEL|$LINK_CHANNEL|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
      sed -i "s|LINK_GROUP|$LINK_GROUP|g" pterodactyl/resources/scripts/components/dashboard/DashboardContainer.tsx
    fi
    
    print_info "[3/4] Menyalin file..."
    sudo cp -rfT pterodactyl /var/www/pterodactyl
    cd /var/www/pterodactyl
    
    print_info "Memeriksa versi Node.js..."
    CURRENT_NODE_VER=$(node -v 2>/dev/null | cut -d'.' -f1 | sed 's/v//')
    
    if [[ "$CURRENT_NODE_VER" == "22" ]]; then
        print_success "Node.js v22 sudah terinstall. Melewati instalasi ulang."
    else
        print_warning "Node.js v22 belum terinstall (Versi saat ini: v$CURRENT_NODE_VER). Menginstall Node.js v22..."
        unset NVM_DIR
        sudo apt-get remove -y nodejs npm > /dev/null 2>&1 || true
        sudo apt-get purge -y nodejs > /dev/null 2>&1 || true
        sudo rm -f /usr/bin/node /usr/local/bin/node /usr/bin/npm /usr/local/bin/npm
        sudo rm -rf /etc/apt/sources.list.d/nodesource.list
        sudo rm -rf "$HOME/.nvm"
        sudo mkdir -p /etc/apt/keyrings
        curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor --yes | sudo tee /etc/apt/keyrings/nodesource.gpg > /dev/null
        echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list > /dev/null
        sudo apt-get update
        sudo apt-get install -y nodejs
    fi

    hash -r
    sudo npm i -g yarn > /dev/null 2>&1
    
    print_info "Menginstal dependensi build..."
    yarn add cross-env react-feather
    yarn install

    if [ "$SELECT_THEME" -eq 2 ]; then
      print_info "Menjalankan instalasi $THEME_NAME..."
      php artisan billing:install stable
    fi

    RAM_SIZE=$(free -m | awk '/Mem:/ {print $2}')
    SWAP_SIZE=$(free -m | awk '/Swap:/ {print $2}')
    TOTAL_MEM=$((RAM_SIZE + SWAP_SIZE))

    if [ "$SELECT_THEME" -eq 9 ]; then
        print_info "Memeriksa kebutuhan memori untuk proses build $THEME_NAME..."
        if [ "$TOTAL_MEM" -lt 2000 ]; then
            print_warning "Total Memori (RAM $RAM_SIZE + Swap $SWAP_SIZE = $TOTAL_MEM MB) di bawah 2GB."
            print_warning "Menambahkan Swap 1.5GB agar proses build aman..."
            sudo fallocate -l 1536M /swapfile_extra
            sudo chmod 600 /swapfile_extra
            sudo mkswap /swapfile_extra
            sudo swapon /swapfile_extra
            echo '/swapfile_extra none swap sw 0 0' | sudo tee -a /etc/fstab
            print_success "Swap Ekstra 1.5GB berhasil ditambahkan."
            print_warning "Karena menggunakan swap, proses build mungkin akan lebih lama."
        else
            print_info "Total Memori aman ($TOTAL_MEM MB). Melewati pembuatan Swap."
        fi
    fi

    print_info "[4/4] Membangun aset panel..."
    print_warning "Proses build sedang berjalan. Mohon bersabar dan JANGAN tutup terminal sampai proses selesai!"
    if [ "$RAM_SIZE" -lt 4000 ]; then print_warning "Di RAM kecil mungkin proses buildnya akan memakan waktu sedikit lebih lama."; fi

    export NODE_OPTIONS="--max-old-space-size=2048 --openssl-legacy-provider"
    php artisan migrate --force
    yarn build:production
    php artisan view:clear
    php artisan optimize:clear
    
    print_success "Tema '$THEME_NAME' berhasil diinstall."
  fi

  echo " "
  log_success "==============================================="
  log_success "         INSTALASI BERHASIL SELESAI            "
  log_success "==============================================="
  echo " "
  sleep 3
  return 0
}

# Uninstall theme
uninstall_theme() {
  echo " "
  log_info "[+] =============================================== [+]"
  log_info "[+]       RESET PANEL (UNINSTALL THEME/TOOLS)       [+]"
  log_info "[+] =============================================== [+]"
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
            print_error "Direktori instalasi Pterodactyl tidak ditemukan."
            return 1
        fi
        cd /var/www/pterodactyl || { print_error "Gagal masuk ke direktori Pterodactyl."; return 1; }

        print_info "⚙️  Memulai proses reset panel..."

        echo -e "${BOLD}   - Mem-backup file .env...${NC}"
        TEMP_BACKUP=$(mktemp -d)
        if [ -f ".env" ]; then sudo mv .env "$TEMP_BACKUP/"; fi

        echo -e "${BOLD}   - Menghapus semua file panel lama...${NC}"
        sudo find . -mindepth 1 -delete
        
        echo -e "${BOLD}   - Mengunduh panel original terbaru...${NC}"
        curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | sudo tar -xzf - -C /var/www/pterodactyl
    
        echo -e "${BOLD}   - Mengembalikan file .env...${NC}"
        if [ -f "$TEMP_BACKUP/.env" ]; then sudo mv "$TEMP_BACKUP"/.env .; fi
        rm -rf "$TEMP_BACKUP"

        echo -e "${BOLD}   - Mengatur kepemilikan file ke 'www-data'...${NC}"
        sudo chown -R www-data:www-data /var/www/pterodactyl

        echo -e "${BOLD}   - Mengupdate Composer...${NC}"
        curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
        
        echo -e "${BOLD}   - Membersihkan cache permission...${NC}"
        sudo rm -rf /var/www/.cache
        sudo mkdir -p /var/www/.cache
        sudo chown -R www-data:www-data /var/www/.cache

        echo -e "${BOLD}   - Menginstal dependensi & menjalankan migrasi...${NC}"
        sudo -u www-data env COMPOSER_PROCESS_TIMEOUT=2000 composer install --no-dev --optimize-autoloader --no-interaction --prefer-dist
        sudo -u www-data php artisan migrate --seed --force
        sudo -u www-data php artisan view:clear
        sudo -u www-data php artisan config:clear
        
        echo -e "${BOLD}   - Membersihkan shortcut Blueprint (jika ada)...${NC}"
        sudo rm -f /usr/local/bin/blueprint
        
        break
        ;;
      [Nn]*)
        echo -e "\n${BOLD}❌ Operasi dibatalkan oleh pengguna.${NC}"
        return
        ;;
      *)
        echo -e "\n${BOLD}Pilihan tidak valid! Silahkan pilih (y) atau (n).${NC}"
        ;;
    esac
  done

  echo " "
  log_success "[+] =============================================== [+]"
  log_success "[+]             PANEL BERHASIL DI-RESET             [+]"
  log_success "[+] =============================================== [+]"
  echo " "
  sleep 3
  return 0
}

# Create Node
create_node() {
  set -e
  echo " "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]             MEMULAI CREATE NODE SCRIPT            [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo " "

  bash <(curl -s https://raw.githubusercontent.com/Bangsano/themeinstaller/main/createnode.sh)

  if [ $? -ne 0 ]; then
    print_error "🚨 TERJADI ERROR saat menjalankan skrip 'createnode.sh'."
    return 1
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
  set -e
  echo -e "                                                       "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                    UNINSTALL PANEL                 [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "

  echo -n -e "${BOLD}Anda yakin ingin uninstall panel? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then echo -e "${BOLD}Uninstall dibatalkan.${NC}"; return; fi

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
  echo -e "                                                       "
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${BLUE}[+]                    HACK BACK PANEL                 [+]${NC}"
  echo -e "${BOLD}${BLUE}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  read -p "Masukkan Username Panel Baru: " user
  read -sp "Masukkan Password Baru (password tidak akan ditampilkan): " pwhb
  echo

  if [[ -z "$user" || -z "$pwhb" ]]; then
      print_error "Username dan Password tidak boleh kosong!"
      return 1
  fi

  if ! cd /var/www/pterodactyl; then
    print_error "Gagal pindah ke direktori /var/www/pterodactyl. Pastikan Pterodactyl terinstal."
    return 1
  fi

  print_info "Membuat user admin baru..."
  if ! printf 'yes\n%s@admin.com\n%s\n%s\n%s\n%s\n' "$user" "$user" "$user" "$user" "$pwhb" | php artisan p:user:make
  then
      print_error "Gagal menjalankan perintah 'php artisan p:user:make'. Periksa log Pterodactyl."
      return 1
  fi

  local panel_url="URL Panel tidak ditemukan"
  local env_file="/var/www/pterodactyl/.env"
  if [[ -f "$env_file" ]]; then
    local app_url_line=$(grep '^APP_URL=' "$env_file")
    if [[ -n "$app_url_line" ]]; then
      panel_url=${app_url_line#APP_URL=}
      panel_url=$(echo "$panel_url" | tr -d '"')
      if [[ ! "$panel_url" =~ ^https?:// ]]; then
          panel_url="https://$panel_url"
      fi
    else
      print_warning "Baris APP_URL tidak ditemukan di $env_file."
    fi
  else
    print_warning "File $env_file tidak ditemukan."
  fi

  echo -e "                                                       "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]                 AKUN TELAH DITAMBAHKAN            [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] ----------------------------------------------- [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] Username: $user${NC}"
  echo -e "${BOLD}${GREEN}[+] Password: (Password yang Anda masukkan tadi)${NC}"
  echo -e "${BOLD}${GREEN}[+] URL Panel: $panel_url${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "
  sleep 4
  return 0
}

ubahpw_vps() {
  echo -e "                                                       "
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "${BOLD}${GREEN}[+]                  UBAH PASSWORD VPS                    [+]${NC}"
  echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
  echo -e "                                                       "

  while true; do
    read -p "Masukkan Password Baru: " pw1
    echo

    read -p "Masukkan Ulang Password Baru: " pw2
    echo

    if [[ "$pw1" == "$pw2" ]]; then
      break
    else
      print_error "Password tidak cocok! Silakan coba lagi."
    fi
  done

  print_info "Mengubah password..."
  passwd <<EOF
$pw1
$pw1
EOF

  if [ $? -eq 0 ]; then
    echo -e "                                                       "
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
    echo -e "${BOLD}${GREEN}[+]              GANTI PASSWORD VPS SUKSES              [+]${NC}"
    echo -e "${BOLD}${GREEN}[+] =============================================== [+]${NC}"
    echo -e "                                                       "
    sleep 3
    return 0
  else
    print_error "Gagal mengubah password. Silakan periksa log sistem."
    sleep 3
    return 1
  fi
}

# Install Dependencies Blueprint
install_blueprint() {
    unset NVM_DIR
    unset NVM_CD_FLAGS
    unset NVM_BIN
    unset NVM_INC
    export PATH=$(echo $PATH | tr ":" "\n" | grep -v "nvm" | tr "\n" ":")
    export DEBIAN_FRONTEND=noninteractive
    export NEEDRESTART_MODE=a

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

    print_info "⚙️  Menginstal dependensi dasar..."
    sudo DEBIAN_FRONTEND=noninteractive apt-get update
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y ca-certificates curl gnupg zip unzip git wget

    print_info "⚙️  Membersihkan versi Node.js lama & NVM..."
    sudo apt-get remove -y nodejs npm
    sudo apt-get purge -y nodejs
    sudo rm -f /usr/bin/node /usr/local/bin/node /usr/bin/npm /usr/local/bin/npm
    sudo rm -rf /etc/apt/sources.list.d/nodesource.list
    sudo rm -rf "$HOME/.nvm"
    
    if [ -f /etc/needrestart/needrestart.conf ]; then
        print_info "⚙️  Mengonfigurasi needrestart ke mode otomatis..."
        sudo sed -i "s/#\$nrconf{restart} = 'i';/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf
        sudo sed -i "s/\$nrconf{restart} = 'i';/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf
    fi

    print_info "⚙️  Mengunduh dan mengekstrak Blueprint Framework..."
    DOWNLOAD_URL=$(curl -s https://api.github.com/repos/BlueprintFramework/framework/releases/latest | grep 'browser_download_url' | grep 'release.zip' | cut -d '"' -f 4)
    if [ -z "$DOWNLOAD_URL" ]; then
        print_error "Gagal mendapatkan link download Blueprint!"
        return 1
    fi
    wget -q "$DOWNLOAD_URL" -O /tmp/blueprint.zip
    unzip -oq /tmp/blueprint.zip -d /var/www/pterodactyl
    rm /tmp/blueprint.zip

    print_info "⚙️  Menyiapkan repositori Node.js v22.x..."
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor --yes | sudo tee /etc/apt/keyrings/nodesource.gpg > /dev/null
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list > /dev/null

    print_info "⚙️  Menginstal Node.js dan Yarn..."
    sudo DEBIAN_FRONTEND=noninteractive apt-get update
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
    hash -r 
    sudo npm i -g yarn

    print_info "⚙️  Menginstal dependensi Pterodactyl..."
    cd /var/www/pterodactyl
    yarn add cross-env
    yarn install

    print_info "⚙️  Menjalankan blueprint.sh..."
    cd /var/www/pterodactyl
    sed -i -E -e "s|WEBUSER=\"www-data\" #;|WEBUSER=\"www-data\" #;|g" \
               -e "s|USERSHELL=\"/bin/bash\" #;|USERSHELL=\"/bin/bash\" #;|g" \
               -e "s|OWNERSHIP=\"www-data:www-data\" #;|OWNERSHIP=\"www-data:www-data\" #;|g" blueprint.sh
    chmod +x blueprint.sh
    yes | sudo bash blueprint.sh

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
  set -e
  export DEBIAN_FRONTEND=noninteractive
  export NEEDRESTART_MODE=a
  
  echo " "
  log_info "[+] =============================================== [+]"
  log_info "[+]            INSTALL FITUR AUTO SUSPEND           [+]"
  log_info "[+] =============================================== [+]"
  echo " "
  echo -e "${BOLD}Fitur ini akan menambahkan fungsionalitas auto-suspend server.${NC}"
  echo -n -e "${BOLD}Lanjutkan instalasi? (y/n): ${NC}"
  read confirmation
  if [[ "$confirmation" != [yY] ]]; then
    echo -e "${BOLD}Instalasi dibatalkan.${NC}"
    return
  fi

  print_info "Memastikan Node.js versi 22 terinstall..."
  unset NVM_DIR
  sudo apt-get remove -y nodejs npm
  sudo apt-get purge -y nodejs
  sudo rm -f /usr/bin/node /usr/local/bin/node /usr/bin/npm /usr/local/bin/npm
  sudo rm -rf /etc/apt/sources.list.d/nodesource.list
  sudo rm -rf "$HOME/.nvm"
  sudo mkdir -p /etc/apt/keyrings
  curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor --yes | sudo tee /etc/apt/keyrings/nodesource.gpg > /dev/null
  echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_22.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list > /dev/null
  sudo apt-get update
  sudo apt-get install -y nodejs
  hash -r 
  sudo npm i -g yarn

  TEMP_DIR=$(mktemp -d)
  trap 'rm -rf -- "$TEMP_DIR"' EXIT
  cd "$TEMP_DIR"

  print_info "Mengunduh file autosuspend.zip..."
  wget -q https://github.com/Bangsano/themeinstaller/raw/main/autosuspend.zip
  
  print_info "Mengekstrak file..."
  unzip -oq autosuspend.zip || true
  
  print_info "Menyalin file migrasi database..."
  sudo cp -rf pterodactyl/* /var/www/pterodactyl/
  
  print_info "Menerapkan modifikasi sistem..."
  cd /var/www/pterodactyl

  sed -i "/use Ramsey\\\\Uuid\\\\Uuid;/a use Pterodactyl\\\\Models\\\\Server;" app/Console/Kernel.php
  if ! grep -q "Server::where('exp_date'" app/Console/Kernel.php; then
      sed -i "/\\\$schedule->command(CleanServiceBackupFilesCommand::class)->daily();/a \\
      \\
          \$schedule->call(function () { \\
              \$servers = Server::where('exp_date', '<', now())->get(); \\
              \$suspensionService = \\\\App::make('Pterodactyl\\\\Services\\\\Servers\\\\SuspensionService'); \\
              foreach (\$servers as \$server) { \\
                  if(\$server->status != 'suspended') { \\
                      if(\$server->status != 'installing') { \\
                          if(\$server->exp_date != null) { \\
                              \$suspensionService->toggle(\$server, 'suspend'); \\
                          } \\
                      } \\
                  } \\
              } \\
          })->dailyAt('23:55');" app/Console/Kernel.php
  fi

  sed -i "/'owner_id', 'external_id', 'name', 'description',/a \\\t\t\t'exp_date'," app/Http/Controllers/Admin/ServersController.php
  sed -i "/'oom_disabled' => 'sometimes|boolean',/a \\            'exp_date' => \$rules['exp_date']," app/Http/Requests/Api/Application/Servers/StoreServerRequest.php
  sed -i "/'oom_disabled' => array_get(\$data, 'oom_disabled'),/a \\            'exp_date' => array_get(\$data, 'exp_date')," app/Http/Requests/Api/Application/Servers/StoreServerRequest.php
  sed -i "/'backup_limit' => 'present|nullable|integer|min:0',/a \\        'exp_date' => 'sometimes|nullable'," app/Models/Server.php
  sed -i "/'description' => Arr::get(\$data, 'description') ?? '',/a \                'exp_date' => Arr::get(\$data, 'exp_date') ?? null," app/Services/Servers/DetailsModificationService.php
  sed -i "/'backup_limit' => Arr::get(\$data, 'backup_limit') ?? 0,/a \\                'exp_date' => Arr::get(\$data, 'exp_date') ?? null," app/Services/Servers/ServerCreationService.php
  sed -i "/'name' => \$server->name,/a \\                'exp_date' => \$server->exp_date," app/Transformers/Api/Client/ServerTransformer.php
  
  if [ -f "resources/scripts/api/server/getServer.ts" ]; then
      sed -i "/name: string;/a \\        expDate: string;" resources/scripts/api/server/getServer.ts
      sed -i "/name: data.name,/a \\        expDate: data.exp_date," resources/scripts/api/server/getServer.ts
  fi

  if [ -f "resources/scripts/components/server/console/ServerDetailsBlock.tsx" ]; then
      sed -i "/faMicrochip,/a \\        faCalendarDay," resources/scripts/components/server/console/ServerDetailsBlock.tsx
      sed -i "/const limits = ServerContext.useStoreState((state) => state.server.data!.limits);/a \\        const expDate = ServerContext.useStoreState((state) => state.server.data!.expDate);" resources/scripts/components/server/console/ServerDetailsBlock.tsx
      
      sed -i -e '/<StatBlock icon={faMicrochip} title={'\''CPU Load'\''} color={getBackgroundColor(stats.cpu, limits.cpu)}>/{x;p;x;}' \
             -e '\%<StatBlock icon={faMicrochip} title={'\''CPU Load'\''} color={getBackgroundColor(stats.cpu, limits.cpu)}>%'"{s%^%\t\t\t<StatBlock icon={faCalendarDay} title={'Expiration Date'}>\n\t\t\t\t{expDate ? expDate : 'Unlimited'}\n\t\t\t<\/StatBlock>\n%}" resources/scripts/components/server/console/ServerDetailsBlock.tsx
  fi

  TARGET_BLADE="resources/views/admin/servers/view/details.blade.php"
  if [ -f "$TARGET_BLADE" ] && ! grep -q "exp_date" "$TARGET_BLADE"; then
      sed -i "/<p class=\"text-muted small\">Character limits: <code>a-zA-Z0-9_-<\/code> and <code>\[Space\]<\/code>.<\/p>/,/<\/div>/ {
        /<\/div>/ {
        s|<\/div>|&\n                    <div class=\"form-group\">\n                        <label for=\"exp_date\" class=\"control-label\">Expiration date<\/label>\n                        <input type=\"date\" name=\"exp_date\" value=\"{{ old('exp_date', \$server->exp_date) }}\" class=\"form-control\" \/>\n                        <p class=\"text-muted small\">Server akan kadaluarsa (suspend) di akhir hari pada tanggal yang dipilih (kosongkan jika ingin server permanen)<\/p>\n                    <\/div>|
        }
      }" "$TARGET_BLADE"
  fi

  TARGET_NEW="resources/views/admin/servers/new.blade.php"
  if [ -f "$TARGET_NEW" ] && ! grep -q "exp_date" "$TARGET_NEW"; then
      sed -i "/<p class=\"small text-muted no-margin\">Email address of the Server Owner.<\/p>/,/<\/div>/ {
        /<\/div>/ {
        s|<\/div>|&\n\n\t\t\t\t\t\t<div class=\"form-group\">\n\t\t\t\t\t\t\t<label for=\"exp_date\">Expiration date<\/label>\n\t\t\t\t\t\t\t<input type=\"date\" class=\"form-control\" id=\"expiration\" name=\"exp_date\" value=\"{{ old('exp_date') }}\" placeholder=\"Expiration Date\">\n\t\t\t\t\t\t\t<p class=\"small text-muted no-margin\">Server akan kadaluarsa (suspend) di akhir hari pada tanggal yang dipilih (kosongkan jika ingin server permanen)<\/p>\n\t\t\t\t\t\t<\/div>|
        }
      }" "$TARGET_NEW"
  fi

  print_info "Menjalankan migrasi database..."
  php artisan migrate --force

  print_info "Menginstal dependensi build..."
  yarn add cross-env
  yarn install

  print_info "Membangun ulang aset panel..."
  export NODE_OPTIONS=--openssl-legacy-provider
  yarn run build:production

  print_info "Membersihkan cache..."
  php artisan optimize:clear
  php artisan view:clear
  php artisan cache:clear
  php artisan route:clear
  chown -R www-data:www-data /var/www/pterodactyl/*

  echo " "
  log_success "[+] =============================================== [+]"
  log_success "[+]        FITUR AUTO SUSPEND BERHASIL DIINSTALL      [+]"
  log_success "[+] =============================================== [+]"
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
  echo -e "${BOLD}  1. Install Themes${NC}"
  echo -e "${BOLD}  2. Install Blueprint${NC}"
  echo -e "${BOLD}  3. Install Fitur Auto Suspend${NC}"
  echo -e "${BOLD}  4. Reset Panel (menghapus semua modifikasi panel seperti tema kustom atau tools lainnya)${NC}"
  echo -e "${BOLD}  5. Uninstall Panel${NC}"
  echo -e "${BOLD}  6. Configure Wings${NC}"
  echo -e "${BOLD}  7. Create Node & Location${NC}"
  echo -e "${BOLD}  8. Hack Back Panel${NC}"
  echo -e "${BOLD}  9. Ubah Password VPS${NC}"
  echo -e "${BOLD}  x. Exit${NC}"
  print_info "Jika panel mengalami eror setelah menginstall tema atau tools lainnya, silakan jalankan fitur reset panel."
  echo -n -e "${BOLD}Masukkan pilihan (1-9 atau x): ${NC}"
  read -r MENU_CHOICE

  case "$MENU_CHOICE" in
    1) install_theme ;;
    2) install_blueprint ;;
    3) install_auto_suspend ;;
    4) uninstall_theme ;;
    5) uninstall_panel ;;
    6) configure_wings ;;
    7) create_node ;;
    8) hackback_panel ;;
    9) ubahpw_vps ;;
    x)
      echo -e "${BOLD}${ORANGE}Keluar dari skrip. Terima kasih!${NC}"
      exit 0
      ;;
    *)
      print_error "Pilihan tidak valid, silahkan coba lagi."
      sleep 2
      ;;
  esac
done
