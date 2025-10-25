#!/bin/bash

# Script de instalação automática para Electron
echo "🚀 Instalando dependências do Electron..."

# Verificar se Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não encontrado. Instale Node.js primeiro:"
    echo "   https://nodejs.org/"
    exit 1
fi

# Verificar versão do Node.js
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo "❌ Node.js versão 16+ necessária. Versão atual: $(node -v)"
    exit 1
fi

echo "✅ Node.js $(node -v) encontrado"

# Instalar dependências
echo "📦 Instalando dependências..."
npm install

if [ $? -eq 0 ]; then
    echo "✅ Dependências instaladas com sucesso!"
else
    echo "❌ Erro ao instalar dependências"
    exit 1
fi

# Compilar para Windows
echo "🔨 Compilando para Windows..."
npm run build-win

if [ $? -eq 0 ]; then
    echo "✅ Compilação concluída!"
    echo ""
    echo "📁 Arquivos gerados em:"
    echo "   - dist/Catavento Astronautas Setup.exe (Instalador)"
    echo "   - dist/win-unpacked/ (Executável portável)"
    echo ""
    echo "🎯 Para executar:"
    echo "   - Desenvolvimento: npm start"
    echo "   - Executável: dist/win-unpacked/Catavento Astronautas.exe"
    echo ""
    echo "🚀 Aplicação pronta para deploy!"
else
    echo "❌ Erro na compilação"
    exit 1
fi

