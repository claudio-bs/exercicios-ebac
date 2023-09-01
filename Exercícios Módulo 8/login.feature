Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Background: eu acesse a página de autenticação da EBAC-SHOP

    Scenario: Ao inserir dados válidos deve ser direcionado para a tela de checkout
        When eu inserir usuário válido
        And senha válida
        Then deve direcionar para a tela de checkout

    Scenario: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
        When eu inserir usuário inválido
        And senha inválida
        Then deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


