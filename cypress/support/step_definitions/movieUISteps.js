const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

//adicionei a pasta constants que reune os IDs para criar melhor integração e manutenção
const SELECTORS = require('../constants/selectors');

Given('I access the TMDB website', () => {
  // acessa a pagina inicial
  cy.visit('https://www.themoviedb.org');
});

When('I search for {string} in the UI', (movie) => {
  // aguarda o campo de busca, limpa e digita o valor
  cy.get(SELECTORS.searchInput)
    .should('be.visible')
    .clear()
    .type(movie + '{enter}');
});

Then('I should see movie results on the screen', () => {
  // valida que a URL contem o parametro de busca
  cy.url().should('include', 'query=');

  // valida que existem resultados na tela
  cy.get(SELECTORS.movieCards)
    .should('have.length.greaterThan', 0);

  // valida que o primeiro resultado possui título visível
  cy.get(SELECTORS.movieTitles)
    .first()
    .should('be.visible')
    .and('not.be.empty');
});
Then('I should see release date for the movies', () => {
  cy.get(SELECTORS.releaseDate)
    .should('have.length.greaterThan', 0)
    .each((el) => {
      const date = el.text().trim();

      // log no Cypress
      cy.log(`Release date: ${date}`);

      // validação básica
      expect(date).to.not.be.empty;
    });
});