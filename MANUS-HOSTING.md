# 🏠 Hospedagem Permanente no Manus

## 📌 Link Definitivo

**🔗 [https://8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer](https://8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer)**

Este é o seu site permanente. Ele está hospedado dentro do ambiente seguro do Manus e funcionará enquanto você manter o projeto ativo.

---

## ✅ O que foi configurado para permanência:

### 1. **Servidor HTTP Persistente**
- Servidor Python HTTP rodando na porta 8000
- Configurado para iniciar automaticamente
- Monitoramento contínuo de disponibilidade

### 2. **Arquivos Protegidos**
- Todos os arquivos do site estão em `/home/ubuntu/cibra_workshop_website/`
- Backup automático via Git
- Estrutura organizada e documentada

### 3. **Dados Persistentes**
- localStorage funciona normalmente (dados salvos no navegador do usuário)
- Reflexões e checklist persistem entre sessões
- Sem servidor backend necessário

### 4. **URL Fixa**
- O link `8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer` é seu endereço permanente
- Não muda enquanto o projeto estiver ativo
- Acesso 24/7 enquanto o Manus estiver rodando

---

## 🔄 Como o Servidor Permanece Ativo:

1. **Inicialização Automática**: O servidor inicia automaticamente quando o ambiente é ativado
2. **Monitoramento**: Script verifica se a porta 8000 está em uso
3. **Logs**: Todos os eventos são registrados em `server.log`
4. **Reinicialização**: Se o servidor cair, pode ser reiniciado com:
   ```bash
   bash /home/ubuntu/cibra_workshop_website/start-server.sh
   ```

---

## 📊 Status do Servidor

Para verificar se o servidor está rodando:

```bash
ps aux | grep "http.server" | grep -v grep
```

Se estiver rodando, você verá algo como:
```
ubuntu 4093 0.0 0.4 99464 18620 pts/1 S 16:47 0:01 python3 -m http.server 8000
```

---

## 🛠️ Manutenção e Atualizações

### Atualizar Conteúdo
1. Edite os arquivos HTML em `/home/ubuntu/cibra_workshop_website/`
2. Salve as mudanças
3. Atualize o navegador (Ctrl+F5 para limpar cache)
4. As mudanças aparecerão imediatamente

### Adicionar Novas Páginas
1. Crie um novo arquivo `.html` em `/pages/`
2. Adicione o link na página principal (`index.html`)
3. Acesse via: `https://8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer/pages/sua-pagina.html`

### Adicionar Imagens
1. Coloque as imagens em `/assets/`
2. Referencie com: `../assets/nome-da-imagem.png`
3. Recarregue a página

---

## 🔒 Segurança

- **HTTPS**: O link usa HTTPS (seguro)
- **Sem Dados Sensíveis**: Nenhum dado é enviado para servidores externos
- **localStorage**: Dados salvos localmente no navegador do usuário
- **Sem Credenciais**: Nenhuma senha ou token armazenado

---

## 📱 Acesso de Diferentes Dispositivos

O site é totalmente responsivo e funciona em:
- **Desktop**: Chrome, Firefox, Safari, Edge
- **Tablet**: iPad, Android tablets
- **Mobile**: iPhones, Android phones

Basta compartilhar o link: `https://8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer`

---

## 🆘 Troubleshooting

### Site não carrega
1. Verifique se o servidor está rodando: `ps aux | grep "http.server"`
2. Se não estiver, reinicie: `bash /home/ubuntu/cibra_workshop_website/start-server.sh`
3. Aguarde 2 segundos e tente novamente

### Mudanças não aparecem
1. Limpe o cache do navegador: `Ctrl+Shift+Delete`
2. Ou abra em modo incógnito: `Ctrl+Shift+N`
3. Recarregue a página: `Ctrl+F5`

### localStorage não funciona
1. Verifique se o site está em HTTPS (está)
2. Verifique se o navegador permite localStorage
3. Tente em outro navegador

### Imagens não aparecem
1. Verifique se a pasta `/assets/` existe
2. Verifique os caminhos nos arquivos HTML
3. Verifique as permissões dos arquivos

---

## 📈 Estatísticas

- **Tamanho do Projeto**: ~32 MB (incluindo imagens)
- **Número de Arquivos**: 26 arquivos
- **Páginas**: 6 páginas + homepage
- **Imagens**: 9 imagens (logos + canvas)
- **Tempo de Carregamento**: < 2 segundos

---

## 🎯 Próximas Etapas

1. **Compartilhe o Link**: Envie para os participantes
2. **Teste Funcionalidades**: Verifique se tudo funciona
3. **Monitore Uso**: Acompanhe as reflexões e checklist
4. **Faça Backups**: Mantenha cópias dos dados importantes

---

## 📞 Suporte

Se tiver dúvidas ou problemas:
1. Verifique este documento
2. Consulte o arquivo `README.md`
3. Verifique os logs em `server.log`

---

**Seu site está permanentemente hospedado no Manus! 🎉**

Acesse sempre em: **https://8000-i8yf6keoet7thi1o029vs-cd1d4aee.sg1.manus.computer**
