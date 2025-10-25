# Catavento Astronautas - Electron App

## 🚀 Compilação para Windows Executável

### 📋 Pré-requisitos

1. **Node.js** (versão 16 ou superior)
2. **npm** ou **yarn**

### 🔧 Instalação

```bash
# Instalar dependências
npm install

# Ou com yarn
yarn install
```

### 🏃‍♂️ Executar em Desenvolvimento

```bash
# Executar aplicação
npm start

# Ou com yarn
yarn start
```

### 📦 Compilar para Windows

```bash
# Compilar executável para Windows
npm run build-win

# Ou compilar para todas as plataformas
npm run build
```

### 📁 Arquivos Gerados

Após a compilação, os executáveis serão gerados na pasta `dist/`:

- `Catavento Astronautas Setup.exe` - Instalador Windows
- `win-unpacked/` - Pasta com executável portável

### ⚙️ Configurações da Aplicação

#### Modo Totem/Touch:
- ✅ **Tela cheia**: Aplicação ocupa toda a tela
- ✅ **Modo quiosque**: Sem barras de título ou menus
- ✅ **Sem redimensionamento**: Interface fixa
- ✅ **Prevenção de fechamento**: Só fecha com Ctrl+Alt+Q
- ✅ **Sem navegação externa**: Bloqueia URLs externas
- ✅ **Sem menu de contexto**: Desabilita clique direito
- ✅ **Instância única**: Previne múltiplas instâncias

#### Atalhos de Teclado:
- **Ctrl+Alt+Q**: Sair da aplicação (modo totem)
- **F11**: Alternar tela cheia (modo desenvolvimento)
- **Ctrl+Shift+I**: DevTools (apenas desenvolvimento)

### 🎯 Características do Executável

#### Interface:
- ✅ **Tela cheia automática**
- ✅ **Sem bordas de janela**
- ✅ **Foco automático**
- ✅ **Carregamento otimizado**

#### Segurança:
- ✅ **Sem integração Node.js**
- ✅ **Context isolation ativado**
- ✅ **Web security habilitado**
- ✅ **Remote module desabilitado**

#### Performance:
- ✅ **Carregamento rápido**
- ✅ **Memória otimizada**
- ✅ **Renderização eficiente**
- ✅ **Gestos touch preservados**

### 📱 Otimizações para Touch

A aplicação já está configurada com:
- ✅ **Pinch zoom desabilitado**
- ✅ **Gestos controlados**
- ✅ **Interface touch-friendly**
- ✅ **Grid responsivo**

### 🔧 Personalização

Para modificar o comportamento, edite o arquivo `main.js`:

```javascript
// Alterar modo touch/totem
const isTouchMode = true; // false para modo desktop

// Alterar atalho de saída
globalShortcut.register('CommandOrControl+Alt+Q', () => {
    app.quit();
});
```

### 🚀 Deploy

1. **Compilar**: `npm run build-win`
2. **Testar**: Executar `dist/win-unpacked/Catavento Astronautas.exe`
3. **Instalar**: Usar `dist/Catavento Astronautas Setup.exe`
4. **Distribuir**: Compartilhar arquivo `.exe` ou instalador

### 📊 Tamanho do Executável

- **Executável portável**: ~150-200MB
- **Instalador**: ~100-150MB
- **Dependências**: Electron + Chromium + Node.js

### 🎯 Uso em Totem

1. Instalar o executável no computador do totem
2. Configurar para iniciar automaticamente
3. Configurar tela para não desligar
4. Aplicação rodará em modo quiosque

---

## 🌐 Links Úteis

- **Electron**: https://electronjs.org/
- **Electron Builder**: https://www.electron.build/
- **Documentação**: https://electronjs.org/docs

**Aplicação pronta para compilação e deploy!** 🚀✨

