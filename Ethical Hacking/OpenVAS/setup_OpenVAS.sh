#!/bin/bash

# Este script automatiza la instalación y configuración de OpenVAS en Kali Linux.

# Salir si algún comando falla
set -e

# Actualizar el sistema
echo "Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y

# Instalar OpenVAS
echo "Instalando OpenVAS..."
sudo apt install -y openvas

# Configurar OpenVAS
echo "Configurando OpenVAS..."
sudo gvm-setup

# Verificar la configuración
echo "Verificando configuración..."
sudo gvm-check-setup


# Reiniciar OpenVAS
echo "Reiniciando OpenVAS..."
sudo gvm-start

# Información final
echo "OpenVAS está instalado y configurado."
echo "Accede a la interfaz web en https://127.0.0.1:9392"
