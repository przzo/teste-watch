# README - Teste Técnico QA Automação

## Setup do Projeto

A partir do ponto em que já possuo o Git Bash e o VS Code instalados em meu computador, iniciei a configuração do projeto clonando o repositório:

```bash
git clone https://gitlab.com/watch-qa/teste-tecnico-analista-automacao-publico.git
```

Após isso, utilizei os comandos Git no terminal para acessar o diretório do projeto e iniciar a configuração do ambiente.

---

## Configuração do Ambiente

Criei o projeto Node com o seguinte comando:

```bash
npm init -y
```

Em seguida, instalei o Cypress como dependência de desenvolvimento:

```bash
npm install cypress@12 --save-dev
```

---

## Integração com Cucumber (BDD)

Este projeto utiliza Cypress integrado com Cucumber, portanto foi necessário realizar as seguintes instalações:

```bash
npm install @badeball/cypress-cucumber-preprocessor@16
npm install @bahmutov/cypress-esbuild-preprocessor
npm install esbuild
```

Para que o Cucumber funcione corretamente, foram realizadas alterações no arquivo `cypress.config.js`.

Dessa forma, o preprocessor do Cucumber integra os arquivos `.feature` com os arquivos de step definitions (`.js`), permitindo uma estrutura de testes baseada em BDD, de fácil leitura e manutenção.

---

## Configuração da API Key

Foi criado um arquivo `cypress.env.json` na raiz do projeto para armazenar a API Key utilizada nos testes de back-end:

```json
{
  "apiKey": "SUA_API_KEY_AQUI"
}
```

Caso os testes não funcionem corretamente, basta substituir pela API Key do usuário que estiver executando o projeto.

Essa abordagem evita expor informações sensíveis diretamente no código e segue boas práticas de segurança.

---

## Estrutura dos Testes

Com a configuração básica finalizada, a estrutura mínima para execução dos testes foi estabelecida.

Foram criados dois cenários principais, escritos em BDD, localizados em:

```bash
cypress/e2e/features/
```

### Testes implementados:

* **Back-end (API):**

  * `movieSearch.feature`

* **Front-end (UI):**

  * `movieSearchUI.feature`

---

## Step Definitions

Os cenários escritos em BDD foram implementados em código utilizando Cypress, nos arquivos localizados em:

```bash
cypress/support/step_definitions/
```

### Implementações:

* **Back-end:**

  * `movieSteps.js`

* **Front-end:**

  * `movieUISteps.js`

---

## Observações sobre BDD

Os cenários foram escritos seguindo o padrão Given / When / Then, representando o comportamento esperado do usuário.

Para facilitar a implementação, foram utilizados plugins do VS Code que auxiliam na integração entre arquivos `.feature` e `.js`. Esses plugins permitem que, ao copiar um step do arquivo `.feature`, a estrutura correspondente (Given, When, Then) seja automaticamente sugerida no arquivo de implementação, acelerando o desenvolvimento.

---

## Boas Práticas Aplicadas

* Separação entre cenários (feature) e implementação (steps)
* Uso de variáveis de ambiente para proteção da API Key
* Centralização de seletores em arquivo dedicado
* Validação de respostas tanto no back-end quanto no front-end
* Logs e evidências para facilitar análise dos testes
* Adição de comentários no código para facilitar entendimento e manutenção

---

## Considerações Finais

O projeto foi desenvolvido com foco em simplicidade, clareza e organização, garantindo que os testes sejam facilmente compreendidos, executados e mantidos.

A inclusão de comentários ao longo do código tem como objetivo tornar a lógica dos testes mais transparente, facilitando a leitura por outros desenvolvedores e avaliadores.

A abordagem escolhida permite fácil expansão para novos cenários, tanto de API quanto de interface, mantendo uma estrutura escalável e alinhada com boas práticas de automação de testes.
