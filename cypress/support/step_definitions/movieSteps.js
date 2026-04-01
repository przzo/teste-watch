const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

// Variável global para armazenar a resposta da API entre os steps
let response;

// Pegando a API key do arquivo cypress.env.json (boa prática para não expor no código)
const apiKey = Cypress.env('apiKey');

Given('I have a valid API key', () => {
  // Validação simples para garantir que a API key foi carregada corretamente
  expect(apiKey).to.exist;
});

When('I search for {string}', (movie) => {
  // Realiza a chamada para a API do TMDB passando o nome do filme como query
  cy.request({
    method: 'GET',
    url: 'https://api.themoviedb.org/3/search/movie',
    qs: {
      api_key: apiKey,
      query: movie
    }
  }).then((res) => {
    // armazena a resposta para usar nos próximos steps (Then)
    response = res;

    // aqui eu quis deixar a execução mais visível,
    // então estou logando alguns filmes no próprio cypress
    const movies = res.body.results.slice(0, 5);

    cy.log('Filmes encontrados:');
    movies.forEach((m) => {
      cy.log(`${m.title} (ID: ${m.id})`);
    });

    // tambem adicionei um console.table para facilitar a visualizaçao completa
    console.table(
      res.body.results.map((m) => ({
        title: m.title,
        id: m.id,
        release: m.release_date
      }))
    );
  });
});

Then('I should receive a list of movies', () => {
  // valida se a requisição foi bem-sucedida
  expect(response.status).to.eq(200);

  // garante que a lista retornada possui resultados
  expect(response.body.results.length).to.be.greaterThan(0);

  // valida alguns campos importantes do retorno para garantir estrutura minima
  expect(response.body.results[0]).to.have.property('title');
  expect(response.body.results[0]).to.have.property('id');
});

Then('I should receive an empty list', () => {
  // mesmo em cenario negativo, a API retorna 200, entao validamos isso
  expect(response.status).to.eq(200);

  // aqui garantimos que nao houve resultados para uma busca invalida
  expect(response.body.results.length).to.eq(0);
});