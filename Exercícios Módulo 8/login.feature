Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos

    Contexto: eu acesse a página de autenticação da EBAC-SHOP

    Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
        Quando eu inserir usuário válido
        E senha válida
        Então deve direcionar para a tela de checkout

    Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
        Quando eu inserir usuário inválido
        E senha inválida
        Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


