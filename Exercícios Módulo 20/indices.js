let numerico = [50, 786, 451, 369, 753, 158, 951, 852, 149, 237]

const maior = (n1 = numerico) => {
    return Math.max.apply(null, n1)
}

const menor = (n2 = numerico) => {
    return Math.min.apply(null, n2)
}

//console.log("O elemento de maior valor é", maior(), "e o de menor valor é", menor())

module.exports = { maior, menor } 