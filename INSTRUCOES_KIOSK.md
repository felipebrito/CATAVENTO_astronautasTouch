# 🚀 MODO KIOSK/TOTEM - INSTRUÇÕES COMPLETAS

## 🎯 **OPÇÕES PARA RODAR EM MODO KIOSK**

### 📱 **OPÇÃO 1: Arquivo HTML Específico (Recomendado)**

#### **Arquivo criado: `kiosk.html`**
- ✅ **Modo kiosk otimizado**
- ✅ **Prevenção de fechamento acidental**
- ✅ **Atalho de saída**: Ctrl+Alt+Q
- ✅ **Interface limpa**
- ✅ **Carregamento automático do index.html**

#### **Como usar:**
1. **Abrir**: `kiosk.html` no navegador
2. **Modo kiosk**: F11 ou usar script
3. **Sair**: Ctrl+Alt+Q

### 🖥️ **OPÇÃO 2: Scripts Automáticos**

#### **Windows:**
```bash
# Executar script
run_kiosk.bat
```

#### **macOS/Linux:**
```bash
# Executar script
./run_kiosk.sh
```

#### **O que os scripts fazem:**
- ✅ **Iniciam servidor local** (porta 8000)
- ✅ **Detectam navegador** disponível
- ✅ **Abrir em modo kiosk** automaticamente
- ✅ **Configurações otimizadas**

### 🌐 **OPÇÃO 3: Comandos Manuais**

#### **Chrome:**
```bash
# Windows
chrome.exe --kiosk --disable-infobars --disable-session-crashed-bubble --disable-web-security --user-data-dir="C:\temp\chrome_kiosk" http://localhost:8000/kiosk.html

# macOS
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk --disable-infobars --disable-session-crashed-bubble --disable-web-security --user-data-dir="/tmp/chrome_kiosk" http://localhost:8000/kiosk.html

# Linux
google-chrome --kiosk --disable-infobars --disable-session-crashed-bubble --disable-web-security --user-data-dir="/tmp/chrome_kiosk" http://localhost:8000/kiosk.html
```

#### **Edge:**
```bash
# Windows
msedge.exe --kiosk --disable-infobars --disable-session-crashed-bubble --disable-web-security --user-data-dir="C:\temp\edge_kiosk" http://localhost:8000/kiosk.html

# macOS
/Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge --kiosk --disable-infobars --disable-session-crashed-bubble --disable-web-security --user-data-dir="/tmp/edge_kiosk" http://localhost:8000/kiosk.html
```

#### **Firefox:**
```bash
# Windows
firefox.exe -kiosk http://localhost:8000/kiosk.html

# macOS
/Applications/Firefox.app/Contents/MacOS/firefox -kiosk http://localhost:8000/kiosk.html

# Linux
firefox -kiosk http://localhost:8000/kiosk.html
```

## 🔧 **CONFIGURAÇÕES DO MODO KIOSK**

### 🎯 **Características do `kiosk.html`:**
- ✅ **Tela cheia**: Ocupa toda a tela
- ✅ **Sem barras**: Remove barras do navegador
- ✅ **Prevenção de fechamento**: Só sai com Ctrl+Alt+Q
- ✅ **Sem seleção de texto**: Previne seleção acidental
- ✅ **Sem clique direito**: Desabilita menu de contexto
- ✅ **Sem arrastar**: Previne arrastar elementos
- ✅ **Cursor oculto**: Cursor some após 5 segundos
- ✅ **Sem zoom**: Previne zoom com scroll/touch

### ⌨️ **Atalhos de Teclado:**
- **Ctrl+Alt+Q**: Sair do modo kiosk
- **F11**: Alternar tela cheia (navegador)
- **Alt+F4**: Fechar aplicação (Windows)
- **Cmd+Q**: Fechar aplicação (macOS)

## 🚀 **INSTRUÇÕES DE USO**

### 🎯 **Método Mais Simples:**

#### **1. Iniciar servidor:**
```bash
# Windows
python -m http.server 8000

# macOS/Linux
python3 -m http.server 8000
```

#### **2. Abrir navegador:**
- **URL**: http://localhost:8000/kiosk.html
- **Modo kiosk**: F11

#### **3. Configurar inicialização automática:**
- **Windows**: Adicionar ao startup
- **macOS**: Adicionar aos itens de login
- **Linux**: Adicionar ao autostart

### 🎯 **Método Automático:**

#### **Windows:**
1. **Executar**: `run_kiosk.bat`
2. **Aguardar**: Script abre automaticamente
3. **Usar**: Aplicação em modo kiosk

#### **macOS/Linux:**
1. **Executar**: `./run_kiosk.sh`
2. **Aguardar**: Script abre automaticamente
3. **Usar**: Aplicação em modo kiosk

## ⚙️ **CONFIGURAÇÃO PARA TOTEM**

### 🖥️ **Sistema Windows:**

#### **1. Inicialização automática:**
- **Criar atalho**: `run_kiosk.bat`
- **Copiar para**: `C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
- **Renomear**: `Catavento Astronautas.bat`

#### **2. Configurações do sistema:**
- **Tela sempre ligada**: Desabilitar sleep/hibernação
- **Foco automático**: Aplicação sempre em primeiro plano
- **Sem proteção de tela**: Desabilitar screensaver

#### **3. Configurações do navegador:**
- **Página inicial**: http://localhost:8000/kiosk.html
- **Modo kiosk**: Ativado por padrão
- **Sem barras**: Interface limpa

### 🍎 **Sistema macOS:**

#### **1. Inicialização automática:**
- **Criar atalho**: `run_kiosk.sh`
- **Adicionar aos**: Itens de login
- **Configurar**: Executar automaticamente

#### **2. Configurações do sistema:**
- **Tela sempre ligada**: Desabilitar sleep
- **Foco automático**: Aplicação sempre em primeiro plano
- **Sem proteção de tela**: Desabilitar screensaver

### 🐧 **Sistema Linux:**

#### **1. Inicialização automática:**
- **Criar atalho**: `run_kiosk.sh`
- **Adicionar ao**: Autostart
- **Configurar**: Executar automaticamente

#### **2. Configurações do sistema:**
- **Tela sempre ligada**: Desabilitar sleep
- **Foco automático**: Aplicação sempre em primeiro plano
- **Sem proteção de tela**: Desabilitar screensaver

## 🔒 **SEGURANÇA E PROTEÇÃO**

### 🛡️ **Proteções implementadas:**
- ✅ **Prevenção de fechamento**: Só sai com Ctrl+Alt+Q
- ✅ **Sem navegação externa**: URLs externas bloqueadas
- ✅ **Sem menu de contexto**: Clique direito desabilitado
- ✅ **Sem seleção de texto**: Previne seleção acidental
- ✅ **Sem arrastar**: Previne arrastar elementos
- ✅ **Sem zoom**: Previne zoom com scroll/touch

### 🔧 **Configurações adicionais:**
- ✅ **Cursor oculto**: Cursor some após 5 segundos
- ✅ **Interface limpa**: Sem elementos desnecessários
- ✅ **Foco automático**: Aplicação sempre em primeiro plano
- ✅ **Instância única**: Previne múltiplas instâncias

## 📊 **VANTAGENS DO MODO KIOSK**

### ✅ **Vantagens:**
- **Mais leve**: Sem Electron
- **Mais rápido**: Carregamento direto
- **Mais compatível**: Funciona em qualquer sistema
- **Mais simples**: Configuração fácil
- **Mais estável**: Menos dependências
- **Mais flexível**: Fácil de personalizar

### 🎯 **Ideal para:**
- **Totem touch**: Interface pública
- **Kiosk**: Informações interativas
- **Apresentação**: Demonstrações
- **Exposição**: Mostras públicas

## 🎉 **RESULTADO FINAL**

### 🚀 **Arquivos criados:**
- ✅ `kiosk.html` - Versão otimizada para kiosk
- ✅ `run_kiosk.sh` - Script para macOS/Linux
- ✅ `run_kiosk.bat` - Script para Windows
- ✅ `INSTRUCOES_KIOSK.md` - Instruções completas

### 🎯 **Como usar:**
1. **Executar**: Script apropriado para seu sistema
2. **Aguardar**: Aplicação abre automaticamente
3. **Usar**: Interface em modo kiosk
4. **Sair**: Ctrl+Alt+Q

**Modo kiosk configurado com sucesso!** 🚀✨

**Aplicação pronta para totem!** 💻✨

