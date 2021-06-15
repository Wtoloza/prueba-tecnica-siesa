import os
import time

def validar_enteros():
    val = False
    while val != True:
        try:
            os.system('cls')
            print('\n')
            n1 = int(input('Ingresa el primer número entero: '))
            print('\n')
            n2 = int(input('Ingresa el segundo número entero: '))
            val = True
        except (ValueError):
            os.system('cls')
            print('\n')
            print('╔═════════════════════════════════╗')
            print('║  NO INGRESASTE NÚMEROS ENTEROS  ║')
            print('║       INTENTA DE NUEVO :)       ║')
            print('╚═════════════════════════════════╝')
            time.sleep(1)

    return(n1, n2)

# def dividir_num():
#     n1, n2 = validar_enteros()
#     return(n1/n2)


def main():
    os.system('cls')
    print('\n')
    print('╔═════════════════════════════╗')
    print('║  VAS A DIVIDIR DOS NÚMEROS  ║')
    print('║     Número 1 / Numero 2     ║')
    print('╚═════════════════════════════╝')
    time.sleep(1.5)

    n1, n2 = validar_enteros()
    division = n1/n2

    os.system('cls')
    print('\n')
    print('╔═════════════════════╗')
    print('║      RESULTADO      ║')
    print('╚═════════════════════╝')

    print (f'\nLa división entre {n1} y {n2} es {division} \n\n')

if __name__ == '__main__':
    main()