//
//  ViewController.swift
//  final_proj690
//
//  Created by Joshua Stone on 12/1/20.
//

import AVFoundation
import UIKit

class HiraganaViewController: UIViewController {

    @IBOutlet weak var QuestionTextFIeld: UITextField!
    
    @IBOutlet weak var currentScore: UILabel!
    
    
    let flashCards = [ "あ", "い", "う", "え", "お", "か", "き", "く", "け", "こ", "さ", "し", "す", "せ", "そ", "た", "ち", "つ", "て", "と", "な", "に", "ぬ", "ね", "の", "ん", "は", "ひ", "ふ", "へ", "ほ", "ま", "み", "む", "め", "も", "ゆ", "よ", "ら", "り", "る", "れ", "ろ", "わ", "を", "が", "ぎ", "ぐ", "げ", "ご", "ざ", "じ", "ず", "ぜ", "ぞ", "だ", "ぢ", "づ", "で", "ど", "ば", "び", "ぶ", "べ", "ぼ", "ぱ", "ぴ", "ぷ", "ぺ", "ぽ"]
    
    let answers = [ "a", "i", "u", "e", "o", "ka", "ki", "ku", "ke", "ko", "sa", "shi", "su", "se", "so", "ta", "chi", "tsu", "te", "to", "na", "ni", "nu", "ne", "no", "n", "ha", "hi", "fu", "he", "ho", "ma", "mi", "mu", "me", "mo", "yu", "yo", "ra", "ri", "ru", "re", "ro", "wa", "wo", "ga", "gi", "gu", "ge", "go", "za", "zi", "zu", "ze", "zo", "da", "di", "dsu", "de", "do", "ba", "bi", "bu", "be", "bo", "pa", "pi", "pu", "pe", "po"]
    
    var storeAnswer = [String]()
    
    var player: AVAudioPlayer!
    
    var soundOn = true
    
    
    
    
    
    
    @IBOutlet weak var answerBoxOutlet1: UIButton!
    
    @IBOutlet weak var answerBoxOutlet2: UIButton!
    
    @IBOutlet weak var answerBoxOutlet3: UIButton!
    
    @IBOutlet weak var answerBoxOutlet4: UIButton!
    
    @IBAction func soundOnAction(_ sender: UIButton) {
        soundOn = true
    }
    
    @IBAction func soundOffAction(_ sender: UIButton) {
        soundOn = false
    }
    
    
    
    @IBAction func answerBoxAction1(_ sender: UIButton) {
        if answerBoxOutlet1.currentTitle == storeAnswer[0] {
            correctAnswerClicked()
        } else {
            wrongAnswerClicked()
        }
    }
    
    @IBAction func answerBoxAction2(_ sender: UIButton) {
        if answerBoxOutlet2.currentTitle == storeAnswer[0] {
            correctAnswerClicked()
        } else {
            wrongAnswerClicked()
        }
    }
   
    @IBAction func answerBoxAction3(_ sender: UIButton) {
        if answerBoxOutlet3.currentTitle == storeAnswer[0] {
            correctAnswerClicked()
        } else {
            wrongAnswerClicked()
        }
    }
    
    
    @IBAction func answerBoxAction4(_ sender: UIButton) {
        if answerBoxOutlet4.currentTitle == storeAnswer[0] {
            correctAnswerClicked()
        } else {
            wrongAnswerClicked()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetFlashCard()
        // Do any additional setup after loading the view.
    }
    
    
    func resetFlashCard() {
        QuestionTextFIeld.text = flashCards[Int.random(in: 0...50)]
        
        let questionText = QuestionTextFIeld.text
        let indexOfFlash = flashCards.firstIndex(where: { $0 == questionText })
        let randomChoice = Int.random(in: 0...3)
        storeAnswer.append("\(answers[indexOfFlash!])")
        
        
        switch randomChoice {
        case 0:
            answerBoxOutlet1.setTitle("\(answers[indexOfFlash!])", for: .normal)
            
            answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            // compare answerBoxOutlet1.title to answerBoxOutlet2.title
            while answerBoxOutlet2.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
                
            }
            
            answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            // compare answerBoxOutlet1 & 2 titles to answerBoxOutlet3's title
            while answerBoxOutlet3.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            while answerBoxOutlet3.currentTitle == answerBoxOutlet2.currentTitle {
                answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
                
            }
            
            answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            //compare answerBoxOutlet4.title to the rest
            while answerBoxOutlet4.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
                
            }
            while answerBoxOutlet4.currentTitle == answerBoxOutlet2.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            while answerBoxOutlet4.currentTitle == answerBoxOutlet3.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
        case 1:
            answerBoxOutlet2.setTitle("\(answers[indexOfFlash!])", for: .normal)
            
            answerBoxOutlet1.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet1.currentTitle == answerBoxOutlet2.currentTitle {
                answerBoxOutlet1.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet3.currentTitle == answerBoxOutlet2.currentTitle {
                answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet3.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet4.currentTitle == answerBoxOutlet2.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet4.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet4.currentTitle == answerBoxOutlet3.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            
            
        case 2:
            answerBoxOutlet3.setTitle("\(answers[indexOfFlash!])", for: .normal)
            
            answerBoxOutlet1.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet1.currentTitle == answerBoxOutlet3.currentTitle {
                answerBoxOutlet1.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet2.currentTitle == answerBoxOutlet3.currentTitle {
                answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet2.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet4.currentTitle == answerBoxOutlet3.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet4.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet4.currentTitle == answerBoxOutlet2.currentTitle {
                answerBoxOutlet4.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
        case 3:
            answerBoxOutlet4.setTitle("\(answers[indexOfFlash!])", for: .normal)
            
            answerBoxOutlet1.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet1.currentTitle == answerBoxOutlet4.currentTitle {
                answerBoxOutlet1.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet2.currentTitle == answerBoxOutlet4.currentTitle {
                answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet2.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet2.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            
            while answerBoxOutlet3.currentTitle == answerBoxOutlet4.currentTitle {
                answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet3.currentTitle == answerBoxOutlet1.currentTitle {
                answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
            while answerBoxOutlet3.currentTitle == answerBoxOutlet2.currentTitle {
                answerBoxOutlet3.setTitle("\(answers[Int.random(in:0...50)])", for: .normal)
            }
            
        default:
            print("Error, please relaunch the app.")
        }
    }
    
    func incrementScore() {
        var score = Int(currentScore.text!)!
        score += 1
        currentScore.text = String(score)
    }
    
    func correctAnswerSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func wrongAnswerSound() {
        let url = Bundle.main.url(forResource: "B", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func correctAnswerClicked() {
        incrementScore()
        storeAnswer.remove(at: 0)
        if soundOn {
            correctAnswerSound()
        }
        resetFlashCard()
    }
        
    func wrongAnswerClicked() {
        currentScore.text = "0"
        storeAnswer.remove(at: 0)
        if soundOn {
            wrongAnswerSound()
        }
        resetFlashCard()
    }
    
}
    
    

