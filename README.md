# Leaps — Guia de Deploy

## Opção 1 — Vercel (RECOMENDADO ✅)
**Por quê?** Gratuito, HTTPS automático, CDN global, deploy em 2 minutos.

### Passo a passo:
1. Crie conta em https://vercel.com (use Google)
2. No painel, clique em **"Add New → Project"**
3. Clique em **"Upload"** e arraste a pasta com o `index.html`
4. Clique em **"Deploy"** — em 30 segundos seu site está no ar

### Apontar domínio próprio (ex: leaps.online):
1. No painel do projeto no Vercel → **"Settings → Domains"**
2. Digite seu domínio: `leaps.online` e clique **"Add"**
3. O Vercel vai mostrar dois registros DNS para adicionar
4. Vá ao painel do registrador do seu domínio (ex: HostGator, Registro.br)
5. Na área de **"Zona DNS"**, adicione:
   - Tipo: `A` | Nome: `@` | Valor: `76.76.21.21`
   - Tipo: `CNAME` | Nome: `www` | Valor: `cname.vercel-dns.com`
6. Aguarde até 24h para propagar (normalmente leva 5–30 min)

---

## Opção 2 — HostGator (com domínio .online)
**Por quê?** Bom se você já tem hospedagem na HostGator.

### Passo a passo:
1. Acesse o **cPanel** da sua conta HostGator
2. Vá em **"Gerenciador de Arquivos"**
3. Abra a pasta `public_html`
4. Faça upload do `index.html` (substitua o existente se houver)
5. Acesse seu domínio no navegador — pronto!

### Apontar domínio diferente (ex: usar `leaps.online`):
1. Registre o domínio em https://registro.br ou https://hostgator.com.br
2. No painel HostGator → **"Domínios Adicionais"**
3. Adicione o domínio e aponte para a pasta `public_html/leaps`
4. Coloque o `index.html` dentro de `public_html/leaps/`

---

## Configurar o Supabase (captura de leads)

1. Crie conta em https://supabase.com (gratuito)
2. Crie um novo projeto
3. Vá em **"SQL Editor"** e rode o SQL do arquivo `supabase.sql`
4. Vá em **"Settings → API"** e copie:
   - `Project URL` → substitua `https://SEU-PROJETO.supabase.co` no index.html
   - `anon public key` → substitua `SUA_CHAVE_ANONIMA_AQUI` no index.html
5. Vá em **"Authentication → Policies"** e habilite INSERT na tabela `leads`

---

## Onde comprar domínio .online barato?
- https://registro.br — domínios .com.br (R$40/ano)
- https://namecheap.com — domínios .online (às vezes R$5–15/ano)
- https://hostgator.com.br — pacotes com hospedagem incluída

**Recomendação:** Domínio no Namecheap + hospedagem no Vercel (gratuito) = custo mínimo.
