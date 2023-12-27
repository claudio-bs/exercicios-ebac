let numerico = [50, 786, 451, 369, 753, 158, 951, 852, 149, 237]

let maior = () => {
    return Math.max.apply(null, numerico)
}

let menor = () => {
    return Math.min.apply(null, numerico)
}

let maiorRes = maior(numerico, 0)
let menorRes = menor(numerico, 0)


console.log(`O elemento de maior valor é ${maiorRes} e o de menor valor é ${menorRes}.`)