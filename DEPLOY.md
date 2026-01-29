# 🚀 Guia de Deploy - Sessão de Design Thinking Cibra

Este documento contém instruções passo a passo para publicar o site em diferentes plataformas.

---

## 📋 Pré-requisitos

- Acesso a uma plataforma de hospedagem (GitHub, Netlify, Vercel, servidor próprio)
- Navegador web
- (Opcional) Git instalado no seu computador

---

## ⭐ Opção 1: GitHub Pages (Recomendado - GRATUITO)

### Passo 1: Criar Repositório no GitHub
1. Acesse [github.com](https://github.com)
2. Clique em "New" para criar um novo repositório
3. Nome: `cibra-workshop` (ou seu nome preferido)
4. Descrição: "Sessão de Design Thinking - Cibra"
5. Deixe como "Public"
6. Clique em "Create repository"

### Passo 2: Fazer Upload dos Arquivos

#### Opção A: Via Git (Recomendado)
```bash
# No terminal, na pasta do projeto
git init
git add .
git commit -m "Deploy do site da Sessão de Design Thinking - Cibra"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/cibra-workshop.git
git push -u origin main
```

#### Opção B: Via Interface Web
1. No repositório GitHub, clique em "Add file" > "Upload files"
2. Arraste todos os arquivos e pastas
3. Clique em "Commit changes"

### Passo 3: Ativar GitHub Pages
1. Vá para "Settings" do repositório
2. Procure por "Pages" no menu lateral
3. Em "Source", selecione "main" branch
4. Clique em "Save"
5. Aguarde alguns minutos
6. O site estará disponível em: `https://SEU_USUARIO.github.io/cibra-workshop`

### Passo 4: (Opcional) Usar Domínio Customizado
1. Compre um domínio (ex: designthinking.cibra.com)
2. Em GitHub Pages > Custom domain, insira seu domínio
3. Configure os DNS records conforme instruções do GitHub

---

## 🌐 Opção 2: Netlify (GRATUITO com domínio customizável)

### Passo 1: Criar Conta
1. Acesse [netlify.com](https://netlify.com)
2. Clique em "Sign up"
3. Escolha "GitHub" para conectar sua conta

### Passo 2: Fazer Deploy
1. Clique em "New site from Git"
2. Selecione "GitHub"
3. Procure pelo repositório `cibra-workshop`
4. Clique em "Deploy site"
5. Aguarde o deploy ser concluído
6. O site estará em: `https://[seu-site].netlify.app`

### Passo 3: (Opcional) Configurar Domínio Customizado
1. Em "Site settings" > "Domain management"
2. Clique em "Add custom domain"
3. Insira seu domínio
4. Siga as instruções para configurar DNS

---

## 🔧 Opção 3: Vercel (GRATUITO com domínio customizável)

### Passo 1: Criar Conta
1. Acesse [vercel.com](https://vercel.com)
2. Clique em "Sign Up"
3. Escolha "GitHub" para conectar sua conta

### Passo 2: Fazer Deploy
1. Clique em "New Project"
2. Selecione o repositório `cibra-workshop`
3. Clique em "Import"
4. Clique em "Deploy"
5. Aguarde o deploy ser concluído
6. O site estará em: `https://cibra-workshop.vercel.app`

### Passo 3: (Opcional) Configurar Domínio Customizado
1. Em "Settings" > "Domains"
2. Clique em "Add"
3. Insira seu domínio
4. Siga as instruções para configurar DNS

---

## 💻 Opção 4: Servidor Próprio (Apache/Nginx)

### Passo 1: Preparar Arquivos
```bash
# Compactar o projeto
zip -r cibra-workshop.zip cibra_workshop_website/

# Ou usar tar
tar -czf cibra-workshop.tar.gz cibra_workshop_website/
```

### Passo 2: Fazer Upload para o Servidor
```bash
# Via SCP (SSH)
scp -r cibra_workshop_website/* seu_usuario@seu_servidor:/var/www/html/

# Ou via FTP usando seu cliente preferido (FileZilla, WinSCP, etc)
```

### Passo 3: Configurar Permissões
```bash
# No servidor
chmod -R 755 /var/www/html/
chown -R www-data:www-data /var/www/html/
```

### Passo 4: Acessar o Site
- Abra seu navegador e acesse: `https://seu_dominio.com`

---

## 🏢 Opção 5: Intranet Corporativa

### Passo 1: Copiar para Servidor Corporativo
```bash
# Copiar para servidor interno
scp -r cibra_workshop_website/* seu_usuario@servidor_interno:/compartilhado/

# Ou via compartilhamento de rede
```

### Passo 2: Compartilhar Link
- Envie o link via email: `http://servidor_interno/cibra_workshop_website/`
- Ou compartilhe via portal corporativo

---

## ✅ Verificação Pós-Deploy

Após fazer o deploy, verifique:

- [ ] Página principal carrega corretamente
- [ ] Todos os links funcionam
- [ ] Imagens carregam corretamente
- [ ] Formulário de reflexões funciona
- [ ] Checklist persiste entre recarregamentos
- [ ] Site é responsivo no mobile
- [ ] Favicon aparece na aba do navegador

---

## 🔒 Segurança

### HTTPS (Recomendado)
- GitHub Pages: ✅ HTTPS automático
- Netlify: ✅ HTTPS automático
- Vercel: ✅ HTTPS automático
- Servidor próprio: Configure SSL/TLS

### Backup
```bash
# Fazer backup local
git clone https://github.com/SEU_USUARIO/cibra-workshop.git backup/

# Ou compactar
zip -r cibra-workshop-backup.zip cibra_workshop_website/
```

---

## 🆘 Troubleshooting

### Site não carrega
- Verifique se todos os arquivos foram enviados
- Verifique as permissões de arquivo (755 para pastas, 644 para arquivos)
- Limpe o cache do navegador (Ctrl+Shift+Delete)

### Imagens não aparecem
- Verifique se a pasta `assets/` foi enviada
- Verifique os caminhos relativos nos arquivos HTML

### localStorage não funciona
- Verifique se o site está em HTTPS (recomendado)
- Verifique as permissões do navegador
- Tente em modo incógnito

### Formulário não salva dados
- Verifique o console do navegador (F12 > Console)
- Verifique se localStorage está habilitado
- Verifique o espaço disponível no navegador

---

## 📞 Suporte

Para dúvidas sobre deploy:
1. Consulte a documentação da plataforma escolhida
2. Verifique o arquivo README.md
3. Entre em contato com a equipe de TI da Cibra

---

**Última Atualização**: Janeiro de 2026
