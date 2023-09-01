Feature: Calculadora
    Como não consigo calcular mentalmente
    Quero usar a calculadora do sistema
    Para somar dois números

    Scenario: Soma de dois números
        Given eu acesse a calculadora
        When somar 2 + 2
        Then o resultado deve ser 4

    Scenario Outline: Soma de dois números
        Given eu acesse a calculadora
        When somar <number1> + <number2>
        Then o resultado deve ser <resul>

        Examples:
            | number1 | number2 | resultado |
            | 7       | 23      | 30        |
            | 59      | 333     | 392       |
            | -57     | -89     | -146      |
            | 73      | -1059   | -986      |
            | 7       | 3       | 10        |
            | 5       | -2      | 3         |
            | 3       | 756     | 759       |
            | 105     | 33      | 138       |
            | 207     | 4       | 211       |
            | 8       | 37      | 45        |
            | 6       | 654     | 660       |
            | 96      | -1058   | -962      |
            | 75      | -7      | 68        |
            | 36      | -892    | 856       |
            | 19      | -81     | 62        |
            | 37      | -456    | 419       |
            | 83      | 753     | 836       |
            | 753     | 75      | 828       |
            | 987     | 94      | 1081      |
            | 332     | 37      | 369       |

