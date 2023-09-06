Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho

    Contexto: que eu acesse a página de produtos da EBAC-SHOP

    Esquema do Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
        Quando eu selecionar a <cor>, <tamanho> e <quantidade>
        Então deve exibir a <menssagem>
        Exemplos:
            | cor       | tamanho | quantidade | menssagem                                                                    |
            | "azul"    | "M"     | 2          | "Adicionado ao carrinho com sucesso!"                                        |
            |           | "G"     | 2          | "Por favor selecione a cor para prosseguir."                                 |
            | "amarelo" |         | 5          | "Por favor selecione o tamanho para prosseguir."                             |
            | "verde"   | "P"     |            | "Por favor indique a quantidade para prosseguir."                            |
            |           |         |            | "Por favor, é necessário indicar cor, tamanho e quantidade para prosseguir." |

    Cenário: Deve permitir apenas 10 produtos por venda
        Quando eu selecionar quantidade > 10
        E clicar em COMPRAR
        Então deve exibir mensagem "Quantidade não disponível. Permitido apenas 10 produtos no carrinho."

    Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
        Quando eu selecionar cor, tamanho e quantidade
        E clicar em "limpar"
        Então deve voltar ao estado original da página
        E exibir mensagem "Carrinho vazio! Por favor, é necessário indicar cor, tamanho e quantidade para prosseguir."