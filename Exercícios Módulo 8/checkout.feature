Funcionalidade: Tela de cadastro - Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto: que eu acesse a tela de cadastro

    Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
        Quando eu preencher os dados obrigatórios:
        | nome         | cpf         | email                   | telefone    | cep      | endereço                                                   |
        | "Jóse Silva" | 12345678900 | "josesilva@ebac.com.br" | 18123456789 | 12345678 | "Rua Fulano de Tal, Nª 100, Bairro: Ciclano, Araçatuba-SP" |
        | "Maria João" | 98765432100 | "mariajoao@ebac.com.br" | 18987654321 | 87654321 | "Rua Tal de Fulano, Nª 200, Bairro: Ipanema, Araçatuba-SP" |
        Então deve exibir um símbolo de check ao lado do campo e as bordas ficarem na cor verde

    Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
        Quando eu inserir e-mail com formato inválido
        Então deve exibir mensagem "Formato de e-mail inválido."

    Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
        Quando eu deixar campos vazios
        E clicar para finalizar o cadastro
        Então deve exibir mensagem "Por favor, preencha os campos vazios"