# Configuração

Este diretório é reservado para configurações do Claude Stack.

## Variáveis

### GITHUB_PERSONAL_ACCESS_TOKEN

O servidor MCP do shadcn pode usar um token do GitHub para evitar limitações de API.

Não coloque o token diretamente no GitHub.

Defina a variável de ambiente `GITHUB_PERSONAL_ACCESS_TOKEN` na máquina local.

O arquivo `.mcp.json` usa expansão de variável para não armazenar o segredo no repositório.
