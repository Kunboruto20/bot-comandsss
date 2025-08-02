#!/bin/bash

clear

# TÍTULO ASCII
echo -e "\e[1;34m"
echo " __        __   _                            ____                  _       _     _     "
echo " \ \      / /__| | ___ ___  _ __ ___   ___  |  _ \ __ _ _ __   ___| |__   (_)___| |_   "
echo "  \ \ /\ / / _ \ |/ __/ _ \| '_ \` _ \ / _ \ | |_) / _\` | '_ \ / __| '_ \  | / __| __|  "
echo "   \ V  V /  __/ | (_| (_) | | | | | |  __/ |  __/ (_| | | | | (__| | | | | \__ \ |_   "
echo "    \_/\_/ \___|_|\___\___/|_| |_| |_|\___| |_|   \__,_|_| |_|\___|_| |_| |_|___/\__|  "
echo -e "\e[0m"
echo -e "\e[1;32m====================================================================================="
echo -e "Instalador oficial inițiat de Gyovanny Srg"
echo -e "=====================================================================================\e[0m"
sleep 1

# INTRODUCERE
echo -e "\e[1;33mPregătesc mediul de dezvoltare. Așteaptă câteva minute...\e[0m"
sleep 1

# ACTUALIZARE SISTEM
echo -e "\n\e[1;36mActualizez pachetele sistemului...\e[0m"
pkg update -y && pkg upgrade -y
clear

# INSTALARE DEPENDINȚE TERMUX
echo -e "\e[1;36mInstalez Node.js, Git, FFmpeg, Python și yt-dlp...\e[0m"
pkg install nodejs git jq ffmpeg python -y
pkg install yt-dlp -y
clear

# INSTALARE DEPENDINȚE NPM
echo -e "\e[1;36mInstalez modulele necesare pentru bot...\e[0m"
npm install @whiskeysockets/baileys qrcode-terminal pino chalk fluent-ffmpeg
clear

# CONFIGURARE MODULE ES
echo -e "\e[1;36mSetez modulul ES pentru compatibilitate .mjs...\e[0m"
echo '{ "type": "module" }' > package.json
sleep 1

# CONFIRMARE FINALĂ
echo -e "\n\e[1;32m✅ Toate dependințele au fost instalate cu succes!\e[0m"
sleep 1

# EFECT MATRIX (OPȚIONAL)
echo -e "\n\e[1;32mActivare mod consolă...\e[0m"
for i in {1..10}; do
    echo -e "\e[1;32m$(tr -dc '01' </dev/urandom | head -c 60)"
    sleep 0.1
done

# EXECUTARE SCRIPT PRINCIPAL
echo -e "\n\e[1;36mPornesc scriptul principal...\e[0m"
sleep 1
npm start
