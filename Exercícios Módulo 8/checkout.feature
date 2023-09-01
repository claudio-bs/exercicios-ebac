Feature: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Scenario: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
        Given eu que acesse a tela de cadastro
        When o dado for obrigatório
        Then deve exibir asterisco

    Scenario: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
        Given eu que acesse a tela de cadastro
        When eu inserir e-mail com formato inválido
        Then deve exibir mensagem "Formato de e-mail inválido."

    Scenario: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
        Given eu que acesse a tela de cadastro
        When eu deixar campos vazios
        And clicar para finalizar o cadastro
        Then deve exibir mensagem "Por favor, preencha os campos vazios"