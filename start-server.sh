#!/bin/bash

# Script de Inicialização do Servidor - Sessão de Design Thinking Cibra
# Este script garante que o servidor HTTP esteja sempre rodando

PROJECT_DIR="/home/ubuntu/cibra_workshop_website"
PORT=8000
LOG_FILE="/home/ubuntu/cibra_workshop_website/server.log"

echo "========================================" >> "$LOG_FILE"
echo "Iniciando servidor em $(date)" >> "$LOG_FILE"
echo "Diretório: $PROJECT_DIR" >> "$LOG_FILE"
echo "Porta: $PORT" >> "$LOG_FILE"
echo "========================================" >> "$LOG_FILE"

# Verificar se a porta já está em uso
if lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1 ; then
    echo "Porta $PORT já está em uso. Servidor já está rodando." >> "$LOG_FILE"
    echo "Acesse: https://8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer" >> "$LOG_FILE"
else
    echo "Iniciando novo servidor HTTP na porta $PORT..." >> "$LOG_FILE"
    cd "$PROJECT_DIR"
    nohup python3 -m http.server $PORT >> "$LOG_FILE" 2>&1 &
    SERVER_PID=$!
    echo "Servidor iniciado com PID: $SERVER_PID" >> "$LOG_FILE"
    echo "Acesse: https://8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer" >> "$LOG_FILE"
fi

echo "Servidor está rodando!" >> "$LOG_FILE"
echo "Log salvo em: $LOG_FILE" >> "$LOG_FILE"
