# Claude Stack — instalação para Windows
# Execute na pasta raiz do repositório.
$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "=== Claude Stack ===" -ForegroundColor Cyan
Write-Host ""

Write-Host "[1/4] Verificando Node.js..."
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Host "Node.js não encontrado. Instale o Node.js e execute novamente." -ForegroundColor Red
    exit 1
}
Write-Host "OK"

Write-Host "[2/4] Instalando Agent Skills..."
npx skills add addyosmani/agent-skills --global

Write-Host "[3/4] Instalando Impeccable..."
npx impeccable install --providers=claude --scope=global

Write-Host "[4/4] Verificando RTK..."
if (Get-Command rtk -ErrorAction SilentlyContinue) {
    Write-Host "RTK já está instalado."
    rtk init -g
} else {
    Write-Host "RTK não foi encontrado no PATH."
    Write-Host "Baixe o executável oficial e coloque rtk.exe no PATH."
    Write-Host "Depois execute: rtk init -g"
}

Write-Host ""
Write-Host "Configuração base concluída." -ForegroundColor Green
Write-Host "Headroom e Ponytail ficam declarados em .claude/settings.json."
Write-Host "O shadcn MCP fica configurado em .mcp.json."
Write-Host ""
Write-Host "Defina GITHUB_PERSONAL_ACCESS_TOKEN antes de usar o shadcn MCP."
