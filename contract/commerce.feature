@ignore
Feature: Commerce mock

  Background:
  * configure  cors = true
  * def commerce = {
          "documentType": "NIT",
          "documentId": "901036745-3",
          "tradeName": "Papa Johns",
          "legalName": "Papa Johns.S.A.",
          "email": "papafbi@papajohns.com",
          "phone": "6541848"
        }

  Scenario: pathMatches('/api/v1/commerces') && methodIs('get')
    * commerce.rowId = uuid()
    * def response = commerce

  Scenario:
    def responseStatus = 404
