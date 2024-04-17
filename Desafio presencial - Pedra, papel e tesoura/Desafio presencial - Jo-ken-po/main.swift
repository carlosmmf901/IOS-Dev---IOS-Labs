//
//  main.swift
//  Desafio presencial - Jo-ken-po
//
//  Created by Debby R on 23/01/24.
//

import Foundation

print("selecione uma jogada:")

func playCalculate(userPlay: Int, PcPlay1: Int, PcPlay2: Int) -> Int {
    return userPlay
}

var plays = ["Pedra","Papel","Tesoura"]
let PcRandomPlay1 = plays.randomElement()!
let PcRandomPlay2 = plays.randomElement()!

for i in 0 ... plays.count - 1 {
    print("\(i): \(plays[i])")
}

let choice = readLine()!
let intChoice = Int(choice)!
let userChoice = Int(plays[intChoice])!

print(userChoice)


if intChoice == 0 || intChoice == 1 || intChoice == 2 {
    print("voce selecionou \(userChoice), primeira escolha Pc \(PcRandomPlay1), segunda escolha Pc \(PcRandomPlay2) \n")
    playCalculate(userPlay: userChoice, PcPlay1: PcRandomPlay1, PcPlay2: PcRandomPlay2)
} else {
    print("Escolha incorreta, por favor, selecione uma jogada")
}






