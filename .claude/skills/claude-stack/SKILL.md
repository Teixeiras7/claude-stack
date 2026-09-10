---
name: claude-stack
description: Roteia tarefas para as capacidades do Claude Stack. Use esta skill para decidir quais recursos são relevantes para a tarefa atual e quais devem ser ignorados. Evite usar ferramentas desnecessariamente.
---

# Claude Stack

Você possui seis capacidades complementares. Elas NÃO devem ser acionadas simplesmente porque estão disponíveis.

## Regra principal

Use a menor combinação de capacidades necessária para concluir a tarefa.

Antes de usar uma capacidade, pergunte internamente:

1. Esta capacidade é relevante para a tarefa?
2. Ela realmente melhora o resultado?
3. O custo de contexto/execução é justificável?
4. Existe uma forma mais simples de resolver?

Se a resposta for não, não use.

## Capacidades

### Agent Skills

Use quando a tarefa se beneficia de um workflow especializado de engenharia de software.

Exemplos:
- planejamento;
- implementação incremental;
- debugging;
- revisão de código;
- testes;
- segurança;
- performance;
- frontend;
- APIs;
- Git.

Não carregue skills que não sejam relevantes.

### Ponytail

Use como princípio de implementação para evitar overengineering.

Prioridades:
1. Não criar o que não é necessário.
2. Reutilizar o que já existe.
3. Preferir recursos nativos.
4. Preferir a solução menor que resolva corretamente o problema.

Não remova validações de segurança, acessibilidade ou tratamento necessário de erros apenas para reduzir código.

### RTK

Use quando o trabalho envolver comandos de terminal cuja saída possa ser grande ou repetitiva.

Objetivo:
- reduzir ruído;
- agrupar resultados;
- eliminar saída repetitiva;
- reduzir contexto enviado ao modelo.

RTK não substitui as ferramentas nativas de leitura, busca e navegação do Claude Code.

### Headroom

Use quando houver contexto ou saída de ferramentas grande o suficiente para justificar compressão.

É especialmente útil em:
- logs extensos;
- JSON grande;
- resultados de ferramentas;
- sessões longas;
- grandes quantidades de dados.

Não force compressão em conteúdo pequeno ou já compacto.

### shadcn UI MCP

Use quando a tarefa envolver shadcn/ui ou bibliotecas compatíveis.

Pode ser usado para:
- descobrir componentes;
- consultar uso;
- consultar instalação;
- consultar exemplos;
- consultar blocos;
- obter contexto específico da implementação.

Não use para tarefas sem relação com UI/shadcn.

### Impeccable

Use em tarefas de frontend quando houver necessidade de:
- revisão visual;
- melhoria de layout;
- tipografia;
- espaçamento;
- hierarquia visual;
- acessibilidade visual;
- consistência de interface;
- refinamento de design.

Não use para backend, banco de dados, scripts ou tarefas que não tenham componente visual.

## Combinações comuns

### Backend/API

Preferencialmente:
- Agent Skills, se relevante
- Ponytail
- RTK, se houver terminal com saída grande

Não usar:
- shadcn MCP
- Impeccable

### Frontend com shadcn

Preferencialmente:
- Agent Skills/frontend, se relevante
- Ponytail
- shadcn UI MCP
- Impeccable, quando houver refinamento visual

### Debugging

Preferencialmente:
- Agent Skills/debugging
- Ponytail
- RTK, se houver muitos logs

### Tarefa simples

Use somente Claude e o mínimo necessário.

Não acione ferramentas apenas para "aproveitar" a instalação.

## Objetivo

O Claude deve continuar sendo um único agente principal.

As seis capacidades são recursos especializados, não agentes independentes.
