let numberList = 1000;
let n1 = 5;
let n2 = 7;
let sum = 0;
var arraylist = [];


function multiplos(numberList) {
    for (c = 1; c < numberList; c++) {
        if (c % n1 === 0 || c % n2 === 0) {
            arraylist.push(c);
        }
    }
    for (c = 0; c < arraylist.length; c++) {
        sum += arraylist[c]
    }
    return arraylist;

}

console.log('Números mútiplos de ' + n1 + ' e ' + n2 + ', abaixo de ' + numberList);
console.log(multiplos(numberList));
console.log('A soma desses múltiplos é ' + sum);
