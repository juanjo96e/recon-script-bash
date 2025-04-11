#!/bin/bash

# Simple Recon Script - Pentest Bash Tool
# by tu_nombre / tu_alias

echo "[+] Iniciando reconocimiento de red..."
read -p "Introduce el rango de red (ej. 192.168.1.0/24): " RANGO

# 1. ARP-SCAN
echo "[+] Escaneando red con arp-scan..."
sudo arp-scan --localnet --interface=eth0 | tee arp_scan_result.txt

# 2. Selección de IP objetivo
read -p "Introduce la IP del host objetivo (descubierta por arp-scan): " TARGET

# 3. NMAP - Puertos y servicios
echo "[+] Escaneando puertos y servicios en $TARGET..."
sudo nmap -sC -sV -Pn -T4 $TARGET -oN nmap_scan_$TARGET.txt

# 4. Opcional: Escaneo de directorios web si hay puerto 80/443
read -p "¿Quieres hacer un escaneo de directorios web en el objetivo? (s/n): " WEBSCAN
if [[ "$WEBSCAN" == "s" ]]; then
    read -p "Introduce el puerto del servicio web (por defecto 80): " WEBPORT
    WEBPORT=${WEBPORT:-80}
    echo "[+] Escaneando directorios con gobuster..."
    sudo gobuster dir -u http://$TARGET:$WEBPORT -w /usr/share/wordlists/dirb/common.txt -t 30 -o gobuster_$TARGET.txt
fi

echo "[+] Reconocimiento completado."
