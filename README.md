# Recon Script Bash

Este es un **script de Bash** diseñado para facilitar el proceso de **reconocimiento** en un **pentest**. El script automatiza tareas comunes como el escaneo de la red y la enumeración de servicios, lo que ayuda a acelerar la fase inicial de un pentest.

## 🧠 Descripción

El script realiza las siguientes tareas:
1. **Escaneo de la red** usando `arp-scan`.
2. **Enumeración de puertos y servicios** con `nmap`.
3. **Escaneo de directorios web** con `gobuster` (opcional).

Está pensado para ayudar a realizar un análisis rápido de una red local y obtener información valiosa sobre los servicios expuestos.

## ⚙️ Requisitos

- **Kali Linux** o cualquier distribución de Linux con herramientas de pentesting.
- **arp-scan**: Herramienta para descubrir hosts en la red local.
- **nmap**: Herramienta para el escaneo de puertos y servicios.
- **gobuster** (opcional): Herramienta para escanear directorios web.

Puedes instalar estas herramientas con el siguiente comando en Kali:

```bash
sudo apt install arp-scan nmap gobuster
```

## 🚀 Uso

1. **Descarga el script**:
   
   ```bash
   git clone https://github.com/juanjo96e/recon-script-bash.git
   cd recon-script-bash
   ```

2. **Dale permisos de ejecución** al script:

   ```bash
   chmod +x scriptrecon.sh
   ```

3. **Ejecuta el script**:

   ```bash
   ./scriptrecon.sh
   ```

   El script te pedirá que introduzcas el rango de red a escanear, y luego te guiará por las diferentes opciones de escaneo.

4. Si decides hacer el escaneo de directorios web, el script te pedirá que introduzcas el puerto del servicio web (por defecto 80).

## 📝 Resultados

- El script genera archivos de salida con los resultados de los escaneos:
  - **`arp_scan_result.txt`**: Contiene el resultado de `arp-scan`, mostrando los hosts encontrados en la red.
  - **`nmap_scan_IP.txt`**: Contiene el resultado del escaneo de puertos y servicios para una IP objetivo.
  - **`gobuster_IP.txt`** (si optas por hacer el escaneo de directorios): Muestra los directorios encontrados en el servicio web de la IP objetivo.


## 🛠️ Autor

**Juanjo**  
Ciberseguridad | Pentesting | Ethical Hacking
