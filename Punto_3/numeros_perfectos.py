import os
import time

def perfecto(n):
    # Inicializando variables
    divisores = []
    sum_divisores = 0

    # Extayendo los divisores del número n
    for i in range(1, n):
        if n%i == 0:
            #print(f'{i} Es divisor de {n}') 
            divisores.append(i)
    
    # Sumando divisores del número n 
    for i in divisores:
        sum_divisores += i
    
    if sum_divisores == n:
        return divisores, True
    else: 
        return divisores, False


def validando_perfectos(numer_list):
    numer_list = validando_lista_enteros(numer_list)
    for number in numer_list:
        d, p = perfecto(number)

        if p == True: 
            p = 'Es perfecto'
        else:
            p = 'No es perfecto'

        print(f'\nLos divisores de {number} son {d} y {p}')


def validando_lista_enteros(x_list):
    number_list = []
    try:
        for x in x_list:
            number_list.append(int(x))
    except (ValueError):
        print('Verifica que la lista sólo contenga enteros')

    return number_list


def main():
    os.system('cls')
    print('\n')
    print('╔═════════════════════════════╗')
    print('║ BIENVENIDO AL VALIDADOR DE: ║')
    print('║      NUMEROS PERFECTOS      ║')
    print('╚═════════════════════════════╝')
    time.sleep(1.5)

    os.system('cls')
    print('\n')
    print('╔══════════════════════════════╗')
    print('║ INGRESA UNA LISTA DE NÚMEROS ║')
    print('║      ASÍ: 1, 2, 3, 4, 5      ║')
    print('║      SEPARADO POR COMAS      ║')
    print('╚══════════════════════════════╝')
    time.sleep(1)

    user_list = input('\nIngresa la lista de números: ')
    user_list = user_list.strip()
    user_list = user_list.split(',')
    validando_perfectos(user_list)
    print('\n')


if __name__ == '__main__':
    main()