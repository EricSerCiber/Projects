#!/bin/sh

# Definir las rutas de los archivos de log y el directorio de copias de seguridad
ACCESS_LOG="/var/log/nginx/access.log"
ERROR_LOG="/var/log/nginx/error.log"
BACKUP_DIR="/var/log/sha_logs"

# Crear el directorio de copias de seguridad si no existe
mkdir -p "$BACKUP_DIR"

# Crear copias de seguridad anteriores si no existen
if [ ! -f "$BACKUP_DIR/access.log.backup" ]; then
    cp "$ACCESS_LOG" "$BACKUP_DIR/access.log.backup"
fi

if [ ! -f "$BACKUP_DIR/error.log.backup" ]; then
    cp "$ERROR_LOG" "$BACKUP_DIR/error.log.backup"
fi

# Crear nuevas copias de seguridad de los archivos de log
cp "$ACCESS_LOG" "$BACKUP_DIR/access.log.tmp"
cp "$ERROR_LOG" "$BACKUP_DIR/error.log.tmp"

# Comparar las copias de seguridad anteriores con las actuales
if cmp -s "$BACKUP_DIR/access.log.backup" "$BACKUP_DIR/access.log.tmp" && \
   cmp -s "$BACKUP_DIR/error.log.backup" "$BACKUP_DIR/error.log.tmp"; then
    echo "Los archivos de log son iguales."
else
    echo "¡Los archivos de log han cambiado!"
    echo "Aquí están las diferencias en el archivo de acceso:"
    diff "$BACKUP_DIR/access.log.backup" "$BACKUP_DIR/access.log.tmp"
    echo "---------------------------------------------"
    echo "Aquí están las diferencias en el archivo de error:"
    diff "$BACKUP_DIR/error.log.backup" "$BACKUP_DIR/error.log.tmp"
fi

# Mover las copias de seguridad temporales a las anteriores
mv "$BACKUP_DIR/access.log.tmp" "$BACKUP_DIR/access.log.backup"
mv "$BACKUP_DIR/error.log.tmp" "$BACKUP_DIR/error.log.backup"
