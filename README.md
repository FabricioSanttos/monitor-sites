# Monitor de Sites

Script desenvolvido em Bash para monitoramento automático de disponibilidade de sites. O script acessa cada site da lista, verifica se está respondendo dentro do tempo limite e registra o resultado em um arquivo de log com data e hora da verificação.

## Como funciona

O script percorre uma lista de sites configurada pelo usuário e tenta acessar cada um deles usando o comando `curl`. Se o site responder em até 5 segundos, é registrado como **ONLINE**. Caso não responda dentro desse tempo, é registrado como **OFFLINE**. Cada verificação é salva no arquivo `log.txt` com a data e hora exatas, permitindo acompanhar o histórico de disponibilidade ao longo do tempo.

## Tecnologias utilizadas

- Bash Script
- curl
- Git

## Como executar

Clone o repositório:
```bash
git clone https://github.com/FabricioSanttos/monitor-sites.git
```

Entre na pasta:
```bash
cd monitor-sites
```

Execute o script:
```bash
bash monitor.sh
```

O resultado será salvo automaticamente no arquivo `log.txt`.

## Exemplo de saída

==============================
Verificação: Sun Jun 21 01:44:06 ESAST 2026
https://google.com - ONLINE
https://github.com - ONLINE
https://youtube.com - ONLINE