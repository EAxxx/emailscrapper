# Um pequeno somador

Esta é uma tarefa-template, que deve ser modificada para ser convertida em
outras atividades. Aqui, fica o enunciado da tarefa, ou seja, sua descrição, com
instruções claras sobre o problema que deve ser resolvido. Esta tarefa consiste
em fazer um somador. Ele deverá receber uma linha de texto contendo dois números
inteiros. Essa linha se encerra com caractere fim de linha `\n`. O programa
deverá imprimir na saída padrão a soma desses dois números

## Como fazer uma outra tarefa usando este template
1. Crie um repositório vazio no Github (sem inicializar o readme nem a licença)
   com o nome da sua tarefa usando a interface web. Vamos chamar esse
   repositório com o nome fantasma de `foobar`.

1. Faça um clone deste repositório para um diretório com o nome de sua tarefa.
   Se sua tarefa se chama foobar, então a linha de comando é:
   `git clone https://github.com/Beethoven-ED/template_unit_test.git foobar`

1. Desvincule sua cópia local deste repositório:
   `git remote remove origin`

1. Vincule sua cópia local ao seu repositório no github:
   `git remote add origin https://github.com/seu_username/foobar.git`

1. Faça as modificações necessárias no código. Use `git add` e `git commit`
   sempre que necessário. Lembre-se de:
   * Modificar o enunciado
   * Adicionar testes de unidade
   * Adicionar um programa-template, se achar necessário.
   * Testar se `make` e `make test` estão funcionando adequadamente.

1. Quando terminar, envie suas modificações ao repositório: `git push
   --set-upstream origin master` (a flag `--set-upstream origin master` só será
   necessária da primeira vez que fizer o `push`).

1. Verifique se as modificações estão todas no Github, no endereço correto.

## Exemplos

Entrada | Saida
------- | -----
`1 2` | `3`
`100 1` | `101`


## Instruções adicionais

1. Vá diretamente ao conjunto de testes para verificar como tratar casos
   limítrofes ou mal-definidos.
1. Lembre-se de seguir as [instruções de submissão](docs/instrucoes.md).
1. Se desejar, proponha novos casos de teste.
