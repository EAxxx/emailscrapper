# Email Scrapper

Webscrapping é o ato de varrer um documento web em busca de informações. Você
pode buscar por URLs válidas e usar essa informação para construir um
webcrawler, ou pode buscar por todas as imagens em uma página, e assim por
diante. Nesta tarefa, encontraremos e-mails válidos usando análise léxica.

## Informações adicionais
O programa deve ser escrito em Lex (o Makefile que acompanha esta tarefa já
contempla a compilação em Lex ao usar `make` e `make test`). Veja que há um
arquivo `src/main.l` que deverá ser modificado para propor a solução desta
tarefa.

O programa receberá um pequeno texto (em formato ASCII padrão) e deverá imprimir
na tela todos os e-mails válidos lidos, *um por linha* e *na ordem que forem
lidos*. E-mails válidos devem obedecer às seguintes regras:

1. São compostos de um nome de usuário e um domínio, separados por um sinal de
   arroba (`@`).

1. Tanto o nome de usuário quanto o domínio têm qualquer número não-nulo de
   caracteres alfanuméricos.

1. Tanto o nome de usuário quanto o domínio podem incluir os caracteres traço
   (`-`), underline (`_`) e ponto (`.`), mas não podem começar nem terminar com
   esses caracteres.

1. Outros caracteres são sempre inválidos (mesmo que alguns, como o `+`, sejam
   possíveis, eles foram excluídos desta tarefa)

## Exemplos

Entrada | Saida
------- | -----
`meu@email.com eh um email valido e seu@email tambem` | `meu@email.com\nseu@email`
`algunsemails-@.naosaovalidos entao o retorno eh nulo` |

## Instruções adicionais

1. Vá diretamente ao conjunto de testes para verificar como tratar casos
   limítrofes ou mal-definidos.
1. Lembre-se de seguir as [instruções de submissão](docs/instrucoes.md).
1. Se desejar, proponha novos casos de teste.
