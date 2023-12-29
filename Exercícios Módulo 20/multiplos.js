const multiplos = (n1 = 5, n2 = 7, limite = 1000) =>{
    var arraylist = [];
    let sum = 0
    for (c = 1; c < limite; c++) {
        if (c % n1 === 0 || c % n2 === 0) {
            arraylist.push(c);
        }
    }
    for (c = 0; c < arraylist.length; c++) {
        sum += arraylist[c]
    }
    return sum
    //return arraylist

}

//console.log('Números múltiplos de ' + n1 + ' e ' + n2 + ', abaixo de ' + 1000);
//console.log(multiplos());
//console.log('A soma desses múltiplos é ' + sum);

module.exports = { multiplos }





