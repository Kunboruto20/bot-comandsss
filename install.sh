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
echo -e "Instalador oficial iniciado por Gyovanny Srg"
echo -e "=====================================================================================\e[0m"
sleep 1

# INTRODUCCIÓN
echo -e "\e[1;33mPreparando entorno de desarrollo. Esto puede tardar unos minutos...\e[0m"
sleep 1

# ACTUALIZACIÓN DEL SISTEMA
echo -e "\n\e[1;36mActualizando paquetes del sistema...\e[0m"
pkg update -y && pkg upgrade -y
clear

# INSTALACIÓN DE DEPENDENCIAS
echo -e "\e[1;36mInstalando Node.js, Git y herramientas necesarias...\e[0m"
pkg install nodejs git jq -y
clear

# INSTALACIÓN DE MÓDULOS NPM
echo -e "\e[1;36mInstalando dependencias del proyecto...\e[0m"
npm install @whiskeysockets/baileys pino chalk node-fetch
npm install
clear

# CONFIRMACIÓN FINAL
echo -e "\n\e[1;32m✅ WhiskeySockets/Baileys instalado con éxito por Gyovanny Srg\e[0m"
sleep 1

# EFECTO MATRIX (OPCIONAL)
echo -e "\n\e[1;32mActivando modo consola...\e[0m"
for i in {1..10}; do
    echo -e "\e[1;32m$(tr -dc '01' </dev/urandom | head -c 60)"
    sleep 0.1
done

# EJECUCIÓN DEL SCRIPT PRINCIPAL
echo -e "\n\e[1;36mLanzando script principal...\e[0m"
sleep 1
npm start
