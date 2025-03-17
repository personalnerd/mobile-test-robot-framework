# Teste de aplicativo Android com Robot Framework

Código fonte do projeto de teste de aplicativo Android com Robot Framework, utilizando o padrão Gherkin para escrita dos casos de testes.

Para tradução do padrão Gherkin (GIVEN, WHEN, THEN, AND) para o português brasileiro (DADO, QUANDO, ENTÃO, E), utilizei as dicas da May Fernandes no artigo [Escrevendo os testes com BDD no Robot Framework - gherkin style](https://medium.com/@mayfernandes/season-tutoriais-ep-04-escrevendo-os-testes-com-bdd-no-robot-framework-gherkin-style-72ad50880768)

Baixei um aplicativo simples de "To Do" para estudo e treino de cenários básicos de teste.

## Estrutura

- `logs/`: Contém logs e relatórios HTML gerados pelos testes.
- `resources/common.robot`: Contém as configurações centralizadas e variáveis de ambiente.
- `resources/app/`: Contém o aplicativo a ser testado.
- `resources/pages/`: Contém objetos de página.
- `resources/utils/`: Contém keywords utilitárias e personalizadas.
- `resources/requirements.txt`: Contém os pacotes necessários para instalação e execução dos testes.
- `tests/`: Contém arquivos de teste.

## Pré-requisitos

- [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- [Android Studio (precisamos do emulador)](https://developer.android.com/studio)
- [Python/Pip](https://www.python.org/downloads/)
- [Node/NPM (necessário para instalar o Appium)](https://nodejs.org/en)
- Appium (`npm install -g appium`)

## Como instalar os requisitos (Robot Framework e bibliotecas)

```bash
pip install -r ./resources/requirements.txt
```

## Executando testes localmente

1. Abra o Emulador Android
2. Abra o terminal e execute o seguinte comando:

```bash
appium -pa wd/hub
```

3. Abra outro terminal e execute o seguinte comando:

```bash
robot -d logs tests
```
