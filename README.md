# Sessão de Design Thinking - Cibra

Um site profissional e permanente para a Sessão de Design Thinking da Cibra, com foco em integração estratégica e inovação.

**Status**: ✅ Pronto para Produção (v2.0 - Permanente)

---

## 📋 Estrutura do Projeto

```
cibra_workshop_website/
├── index.html                          # Página principal
├── assets/                             # Imagens e recursos
│   ├── LogoCibra-Branco-*.png         # Logo da marca
│   ├── LogoCibra-Verde-*.png          # Logo alternativa
│   └── canvas_a*.png                  # Templates de Canvas (A1-A7)
├── pages/                              # Páginas internas
│   ├── guia_pre_trabalho.html         # Guia com formulário de reflexões
│   ├── checklist_materiais.html       # Checklist interativo
│   ├── manual_facilitacao.html        # Manual de facilitação
│   ├── planejamento_sessao.html       # Cronograma e planejamento
│   ├── templates_canvases.html        # Templates dos 7 Canvas
│   └── portal.html                    # Portal com dashboard
└── README.md                           # Este arquivo
```

---

## 🚀 Recursos Principais

### 1. **Página Principal (index.html)**
- Apresentação clara da sessão
- Acesso direto aos materiais
- Design limpo e profissional
- Sem seção hero (foco direto no conteúdo)

### 2. **Guia de Pré-Trabalho** ⭐
- Formulário interativo para reflexões
- 3 tarefas estruturadas (Desafios, Expectativas, Oportunidades)
- Listagem pública de reflexões compartilhadas
- **Persistência robusta via localStorage com tratamento de erros**

### 3. **Checklist de Materiais** ⭐
- Lista completa de materiais necessários
- Progresso visual com barra de porcentagem
- **Persistência de status entre sessões**
- Opção de impressão
- Testes pré-reunião

### 4. **Manual de Facilitação**
- Instruções detalhadas para conduzir a sessão
- Boas práticas e dicas
- Estrutura clara e fácil de navegar

### 5. **Planejamento da Sessão**
- Cronograma completo (4 dias)
- Objetivos e metodologia
- Visitas técnicas programadas
- Timeline de atividades

### 6. **Templates de Canvas** ⭐
- 7 Canvas visuais para Design Thinking
- Download de imagens em alta qualidade
- Instruções de uso para cada Canvas
- **Abertura em nova aba para visualização**

### 7. **Portal**
- Dashboard com informações da sessão
- Calendário de eventos
- Lista de participantes
- Materiais e FAQ

---

## 💾 Persistência de Dados (Robusto)

O site utiliza **localStorage** com tratamento de erros para salvar dados localmente:

### Dados Persistidos:
- **Reflexões do Pré-Trabalho**: `localStorage.reflexoes`
- **Status do Checklist**: `localStorage.checkbox_*`

### Características de Segurança:
✅ Tratamento de erros para falhas de armazenamento  
✅ Validação de dados antes de salvar  
✅ Limpeza automática de dados de teste  
✅ Fallback para valores padrão em caso de erro  
✅ Alertas ao usuário em caso de problemas  
✅ Verificação de disponibilidade de localStorage  
✅ Detecção de espaço de armazenamento cheio  

---

## 🌐 Deploy para Produção

### ⭐ Opção 1: GitHub Pages (Recomendado - GRATUITO)

```bash
# 1. Criar repositório no GitHub
git init
git add .
git commit -m "Deploy do site da Sessão de Design Thinking - Cibra"
git branch -M main
git remote add origin https://github.com/seu-usuario/cibra-workshop.git
git push -u origin main

# 2. Ativar GitHub Pages
# Ir em: Settings > Pages
# Selecionar "main" como branch de deploy
# Acessar em: https://seu-usuario.github.io/cibra-workshop
```

### Opção 2: Netlify (Gratuito com domínio customizável)

```bash
# 1. Instalar Netlify CLI
npm install -g netlify-cli

# 2. Deploy
netlify deploy --prod --dir .

# 3. Conectar domínio customizado (opcional)
```

### Opção 3: Vercel (Gratuito com domínio customizável)

```bash
# 1. Instalar Vercel CLI
npm i -g vercel

# 2. Deploy
vercel --prod
```

### Opção 4: Servidor Tradicional (Apache/Nginx)

```bash
# Copiar arquivos para o servidor
scp -r cibra_workshop_website/* seu_usuario@seu_servidor:/var/www/html/

# Ou via FTP/SFTP usando seu cliente preferido
```

### Opção 5: Intranet Corporativa

- Copiar pasta para servidor interno
- Compartilhar link via email ou portal corporativo
- Funciona sem necessidade de conexão externa

---

## 🎨 Identidade Visual

- **Cores Principais**:
  - Verde Escuro: `#407928` (headers, backgrounds)
  - Verde Cibra: `#B0D235` (acentos, CTAs)
  - Branco: `#FFFFFF` (texto em headers)
  - Cinza: `#F5F5F5` (backgrounds secundários)

- **Tipografia**: Inter (Google Fonts)
- **Logo**: Branco em headers, Verde em footers
- **Favicon**: Dinâmico (gerado via SVG)

---

## 📱 Responsividade

O site é totalmente responsivo e funciona em:
- ✅ Desktop (1920px+)
- ✅ Tablet (768px - 1024px)
- ✅ Mobile (320px - 767px)

Testado em:
- Chrome, Firefox, Safari, Edge
- iOS Safari, Android Chrome

---

## 🔒 Segurança e Privacidade

- ✅ Nenhum dado é enviado para servidores externos
- ✅ Todos os dados são armazenados localmente no navegador
- ✅ Sem cookies de rastreamento
- ✅ Sem análise de dados de terceiros
- ✅ HTTPS recomendado para produção

---

## 📊 SEO e Metadados

Cada página inclui:
- ✅ Meta descriptions otimizadas
- ✅ Keywords relevantes
- ✅ Open Graph tags
- ✅ Theme color
- ✅ Favicon dinâmico
- ✅ Structured data (pronto para implementação)
- ✅ Robots meta tags para indexação

---

## 🛠️ Manutenção e Personalizações

### Adicionar Novo Canvas
1. Adicionar imagem em `assets/canvas_a*.png`
2. Atualizar `pages/templates_canvases.html` com novo botão
3. Atualizar descrição e instruções

### Modificar Cronograma
1. Editar `pages/planejamento_sessao.html`
2. Atualizar datas e horários conforme necessário

### Atualizar Participantes
1. Editar `pages/portal.html`
2. Adicionar/remover nomes na seção de participantes

### Mudar Cores da Marca
1. Editar variáveis CSS em cada arquivo HTML
2. Atualizar: `--verde-cibra`, `--verde-escuro`, `--branco`

---

## 📞 Suporte

Para dúvidas ou sugestões sobre o site:
1. Consulte o Manual de Facilitação
2. Verifique o Portal > FAQ
3. Entre em contato com a equipe de Design Thinking da Cibra

---

## 📅 Informações da Sessão

- **Data**: Conforme agendado
- **Duração**: 4 dias
- **Participantes**: 8 líderes de diferentes áreas
- **Metodologia**: Duplo Diamante
- **Local**: NEX + PUCPR
- **Objetivo**: Integração Estratégica e Inovação

---

## ✨ Características Principais

✅ **Design Profissional**: Alinhado com Brand Guide Cibra  
✅ **Totalmente Responsivo**: Mobile, Tablet, Desktop  
✅ **Sem Dependências Externas**: HTML puro, funciona offline  
✅ **Fácil de Publicar**: Pronto para qualquer servidor web  
✅ **Navegação Intuitiva**: Botões de voltar e links claros  
✅ **Acessível**: Contraste adequado e estrutura semântica  
✅ **Persistência Robusta**: localStorage com tratamento de erros  
✅ **SEO Otimizado**: Metadados completos em todas as páginas  
✅ **Pronto para Produção**: Sem dados de teste, limpo e profissional  

---

## 📝 Notas Técnicas

- Todos os arquivos HTML são independentes e podem ser acessados diretamente
- O site não requer banco de dados ou servidor backend
- Funciona offline (após primeiro carregamento)
- localStorage é limitado a ~5-10MB por domínio (suficiente para reflexões)
- Ideal para compartilhar com participantes via link ou intranet corporativa

---

## 🔄 Histórico de Versões

| Versão | Data | Mudanças |
|--------|------|----------|
| 2.0 | Jan 2026 | **Permanente**: SEO, Favicon, Persistência robusta, Deploy pronto |
| 1.0 | Jan 2026 | Versão inicial com estrutura completa |

---

## 📄 Licença

© 2026 Cibra. Todos os direitos reservados.

---

**Versão**: 2.0 (Permanente)  
**Última Atualização**: Janeiro de 2026  
**Status**: ✅ Pronto para Produção  
**Próxima Revisão**: Conforme necessário
