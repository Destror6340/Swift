//
//  modelo.swift
//  AppleGame
//
//  Created by Alumno on 01/02/23.
//

import Foundation

struct game{
    var word: String
    var triesRemaining: Int
    var guessedLetters: [Character]
    var formatedWord: String {
        var guessedWord=""
        for letter in word{
            if guessedLetters.contains(letter){
                guessedWord+="\(letter)"
            }else{
                guessedWord+="_"
            }
        }
        return guessedWord
    }
    mutating func playerGuessed(letter: Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            triesRemaining-=1
        }
    }
}
