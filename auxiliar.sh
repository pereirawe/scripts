#!/bin/bash

echo "Este es el script principal y tiene como propósito ejecutar a los tres auxiliares. El PID es $$ y el PPID es $PPID."

# Ejecutar aux1.sh
source update.sh

# Ejecutar aux2.sh
. angular-tools.sh