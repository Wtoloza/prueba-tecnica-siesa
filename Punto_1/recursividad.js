// ¿Cuál es el resultado de ejecutar el siguiente código con el valor "5"?

function metodoQueHaceAlgo (valor) {
    if (valor < 3){
        return valor
    }
    return metodoQueHaceAlgo(valor-1)*metodoQueHaceAlgo(valor-2)
}

console.log(metodoQueHaceAlgo(5))