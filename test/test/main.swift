//
//  main.swift
//  test
//
//  Created by iOSLab on 16/01/24.
//

import Foundation

var userFirstChoice = 0

print("Par ou ímpar \n Faça sua aposta: o resultado final deste jogo será par ou ímpar? \n 1 - par \n 2 - Impar \n")

print("Digite apenas um número: \n")

let firstChoice = readLine()
let intChoice = Int(firstChoice!)


if intChoice == 1 {
    userFirstChoice = 1
    print("Voce selecionou par")
}
else if intChoice == 2 {
    userFirstChoice = 2
    print("Voce selecionou ímpar")}

print("Vamos jogar melhor de tres")

print("Escolha um numero inteiro de 1 a 10")

var userInput2Choice = readLine()
let IntUserInput2Choice = Int(userInput2Choice!)

if IntUserInput2Choice <= 10!  {
    var randomPcNumber = 1...Int.random
}
else if intChoice == 2 {
    }
