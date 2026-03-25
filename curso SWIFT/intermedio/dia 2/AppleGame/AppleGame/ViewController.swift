//
//  ViewController.swift
//  AppleGame
//
//  Created by Alumno on 01/02/23.
//
import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["rojo","azul","amarillo","negro","blanco","verde","morado","cafe"]
    let tries = 7
    var totalwins=0
    var totalLosses=0
    var currentGame: game!
    
    //MARK: start outlets
    @IBOutlet weak var ThreeImage: UIImageView!
    @IBOutlet weak var CorrectWordLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet var LetterButtons: [UIButton]!
    @IBOutlet weak var restartButton: UIButton!
    //MARK: End outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newround()
    }
    
    //Start logic functions of the app
    func newround(){
        restartButton.isHidden=true
        if !listOfWords.isEmpty{
            let newWord=listOfWords.removeFirst()
            currentGame=game(word: newWord, triesRemaining: tries, guessedLetters: [])
            enableButtons(true)
            updateUI()
        }else{
            enableButtons(false)
        }
    }
    func enableButtons(_ enable: Bool){
        for button in LetterButtons{
            button.isEnabled = true
        }
    }
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formatedWord{
            letters.append(String(letter))
        }
        let spacedWord = letters.joined(separator: " ")
        CorrectWordLabel.text=spacedWord
        ScoreLabel.text="Wins: \(totalwins), Losses: \(totalLosses)"
        ThreeImage.image=UIImage(named: "Tree \(currentGame.triesRemaining)")
    }
    func updateGameState(){
        if currentGame.triesRemaining == 0{
            totalLosses+=1
            restartButton.isHidden=false
            ThreeImage.image=UIImage(named: "gameOver")
        }else if currentGame.word == currentGame.formatedWord{
            totalwins+=1
            newround()
        }else{
            updateUI()
        }
    }
    
    //MARK: start ACTIONS
    @IBAction func ActionsButtons(_ sender: UIButton) {
        sender.isEnabled=false
        let letterString=sender.titleLabel!.text!
        let letter=Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        print(currentGame.guessedLetters, currentGame.triesRemaining)
        updateGameState()
    }
    @IBAction func reestatButtonAction(_ sender: UIButton) {
        newround()
    }
    //MARK: end actions
    
}

