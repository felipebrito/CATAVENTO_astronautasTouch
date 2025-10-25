#!/bin/bash

# Script para criar release no GitHub com executáveis
echo "🚀 Criando release no GitHub..."

# Verificar se gh CLI está instalado
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI não encontrado. Instale primeiro:"
    echo "   https://cli.github.com/"
    exit 1
fi

# Verificar se está autenticado
if ! gh auth status &> /dev/null; then
    echo "❌ Não autenticado no GitHub. Execute:"
    echo "   gh auth login"
    exit 1
fi

# Verificar se os arquivos existem
if [ ! -f "dist/Catavento Astronautas Setup 1.0.0.exe" ]; then
    echo "❌ Instalador não encontrado. Execute primeiro:"
    echo "   npm run build-win"
    exit 1
fi

if [ ! -f "dist/win-arm64-unpacked/Catavento Astronautas.exe" ]; then
    echo "❌ Executável não encontrado. Execute primeiro:"
    echo "   npm run build-win"
    exit 1
fi

# Criar release
echo "📦 Criando release v1.0.0..."
gh release create v1.0.0 \
    --title "Catavento Astronautas v1.0.0" \
    --notes-file RELEASE_NOTES.md \
    "dist/Catavento Astronautas Setup 1.0.0.exe#Instalador Windows (157MB)" \
    "dist/win-arm64-unpacked/Catavento Astronautas.exe#Executável Portável (160MB)"

if [ $? -eq 0 ]; then
    echo "✅ Release criado com sucesso!"
    echo ""
    echo "🎯 Release disponível em:"
    echo "   https://github.com/felipebrito/CATAVENTO_astronautasTouch/releases/tag/v1.0.0"
    echo ""
    echo "📦 Arquivos incluídos:"
    echo "   - Catavento Astronautas Setup 1.0.0.exe (Instalador)"
    echo "   - Catavento Astronautas.exe (Portável)"
else
    echo "❌ Erro ao criar release"
    exit 1
fi

