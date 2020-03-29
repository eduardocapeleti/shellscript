#!/usr/bin/env bash

#Declarando Variavel OP
OP=1

while [ $OP -ne 0 ]; do

#Função Menu
menu(){
            echo "DIGITE 1 PARA SOMA"
            echo "DIGITE 2 PARA SUBTRAÇÃO"
            echo "DIGITE 0 PARA SAIR"
            read OP
}

#Chama a função menu
menu

#Função Valores
valores(){
            echo "DIGITE O PRIMEIRO NUMERO"
            read NUM1
            echo "DIGITE O SEGUNDO NUMERO"
            read NUM2
}

#Função Soma
soma(){
            valores
            echo "A SOMA DOS VALORES É $( expr $NUM1 + $NUM2)"
}

#Função Subtração
subtracao(){
            valores
            echo "A SUBTRAÇÃO DOS VALORES É $( expr $NUM1 - $NUM2)"
}

#Seletor de Opções com o Metodo IF
if [ $OP -eq 1 ]; then
        soma
elif [ $OP -eq 2 ]; then
        subtracao
elif [ $OP -eq 0 ]; then
        exit
else
        echo "DIGITE UMA OPÇÃO VALIDA"
fi

echo "CALCULO EXECUTADO COM SUCESSO"  

sleep 3
clear
done