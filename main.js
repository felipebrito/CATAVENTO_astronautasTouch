const { app, BrowserWindow, screen } = require('electron');
const path = require('path');

// Configurações para tela touch/totem
const isTouchMode = true;

function createWindow() {
    // Obter informações da tela
    const { width, height } = screen.getPrimaryDisplay().workAreaSize;
    
    // Criar janela principal
    const mainWindow = new BrowserWindow({
        width: width,
        height: height,
        fullscreen: isTouchMode,
        kiosk: isTouchMode, // Modo quiosque para totem
        webPreferences: {
            nodeIntegration: false,
            contextIsolation: true,
            enableRemoteModule: false,
            webSecurity: true
        },
        icon: path.join(__dirname, 'assets', 'icon.png'),
        title: 'Catavento Astronautas - ASE XXXVI Planetary Congress',
        show: false, // Não mostrar até carregar
        frame: !isTouchMode, // Sem bordas em modo touch
        resizable: !isTouchMode,
        maximizable: !isTouchMode,
        minimizable: !isTouchMode,
        closable: !isTouchMode
    });

    // Carregar o arquivo HTML
    mainWindow.loadFile('index.html');

    // Mostrar janela quando carregar
    mainWindow.once('ready-to-show', () => {
        mainWindow.show();
        
        // Focar na janela
        if (isTouchMode) {
            mainWindow.focus();
        }
    });

    // Prevenir fechamento acidental em modo totem
    mainWindow.on('close', (event) => {
        if (isTouchMode) {
            event.preventDefault();
            // Só permite fechar com Ctrl+Alt+Q
            return false;
        }
    });

    // Prevenir navegação para URLs externas
    mainWindow.webContents.on('will-navigate', (event, navigationUrl) => {
        const parsedUrl = new URL(navigationUrl);
        
        if (parsedUrl.origin !== 'file://') {
            event.preventDefault();
        }
    });

    // Prevenir abertura de novas janelas
    mainWindow.webContents.setWindowOpenHandler(() => {
        return { action: 'deny' };
    });

    // Desabilitar menu de contexto
    mainWindow.webContents.on('context-menu', (event) => {
        event.preventDefault();
    });

    // Desabilitar DevTools em produção
    if (process.env.NODE_ENV !== 'development') {
        mainWindow.webContents.on('devtools-opened', () => {
            mainWindow.webContents.closeDevTools();
        });
    }

    // Atalho para sair (Ctrl+Alt+Q)
    const { globalShortcut } = require('electron');
    
    app.whenReady().then(() => {
        globalShortcut.register('CommandOrControl+Alt+Q', () => {
            app.quit();
        });
    });
}

// Este método será chamado quando o Electron terminar de inicializar
app.whenReady().then(createWindow);

// Sair quando todas as janelas estiverem fechadas
app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
        app.quit();
    }
});

app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
        createWindow();
    }
});

// Prevenir múltiplas instâncias
const gotTheLock = app.requestSingleInstanceLock();

if (!gotTheLock) {
    app.quit();
} else {
    app.on('second-instance', () => {
        // Focar na janela existente se tentar abrir segunda instância
        const windows = BrowserWindow.getAllWindows();
        if (windows.length > 0) {
            windows[0].focus();
        }
    });
}

