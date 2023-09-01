Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho

    Scenario Outline: Seleções de cor, tamanho e quantidade devem ser obrigatórios
        Given que eu acesse a página de produtos da EBAC-SHOP
        When eu selecionar a <cor>
        And <tamanho>
        And <quantidade>
        Then deve exibir a <mensagem>


        Examples:
            | cor       | tamanho | quantidade | mensagem                                                                     |
            | "azul"    | "M"     | 2          | "Adicionado ao carrinho com sucesso!"                                        |
            |           | "G"     | 2          | "Por favor selecione a cor para prosseguir."                                 |
            | "amarelo" |         | 5          | "Por favor selecione o tamanho para prosseguir."                             |
            | "verde"   | "P"     |            | "Por favor indique a quantidade para prosseguir."                            |
            |           |         |            | "Por favor, é necessário indicar cor, tamanho e quantidade para prosseguir." |

    Scenario: Deve permitir apenas 10 produtos por venda
        Given que eu acesse a página de produtos da EBAC-SHOP
        When eu selecionar <quantidade> > 10
        And clicar em COMPRAR
        Then deve exibir mensagem "Quantidade não disponível. Permitido apenas 10 produtos no carrinho."

    Scenario: Quando eu clicar no botão “limpar” deve voltar ao estado original
        Given que eu acesse a página de produtos da EBAC-SHOP
        When eu selecionar cor, tamanho e quantidade
        And clicar em "limpar"
        Then deve voltar ao estado original da página
        And exibir mensagem "Carrinho vazio! Por favor, é necessário indicar cor, tamanho e quantidade para prosseguir."