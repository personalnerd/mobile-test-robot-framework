*** Settings ***
Resource    ../resources/common.resource
Suite Setup    Open App
Suite Teardown    Close All Applications

*** Test Cases ***
TC001: Acessar aplicativo pela primeira vez
    Dado que eu estou na tela inicial
    Então o App deve exibir a lista de tarefas vazia
    E o botão de adicionar tarefa deve estar visível

TC002: Adicionar tarefa
    Dado que eu estou na tela inicial
    Quando eu clico no botão Adicionar Tarefa
    E preencho o título com "criar testes com robot"
    E clico em Salvar
    Então o App deve exibir a lista de tarefas
    E deve exibir a tarefa "criar testes com robot" na lista "Today Tasks"
    E deve exibir o ícone de lembrete na tarefa "criar testes com robot"

TC003: Exibir detalhes da tarefa e sair
    Dado que eu estou na tela inicial
    Quando eu clico na tarefa "criar testes com robot"
    Então o App deve exibir os detalhes da tarefa
    E o título da tarefa deve ser "criar testes com robot"
    E a data da tarefa deve ser hoje
    E o lembrete deve ser "On Due"
    E a repetição deve ser "No Repeat"
    E clico em Salvar

TC004: Remover data da tarefa
    Dado que eu estou na tela inicial
    Quando eu clico na tarefa "criar testes com robot"
    E clico no botão de excluir data
    E clico em Salvar
    Então o App deve exibir a lista de tarefas
    E deve exibir a tarefa "criar testes com robot" na lista "No Date Tasks"
    E não deve exibir o ícone de lembrete na tarefa "criar testes com robot"

TC005: Marcar tarefa como concluída
    Dado que eu estou na tela inicial
    Quando eu clico na caixa de seleção da tarefa "criar testes com robot"
    Então o App deve exibir a lista de tarefas
    E deve exibir a tarefa "criar testes com robot" na lista "Completed Tasks"

TC006: Excluir tarefa
    Dado que eu estou na tela inicial
    Quando eu clico e seguro na tarefa "criar testes com robot"
    E aparecer um pop-up de contexto
    E eu clico em Excluir
    E aparecer um pop-up de confirmação
    E eu clico em OK
    Então o App deve exibir a lista de tarefas vazia