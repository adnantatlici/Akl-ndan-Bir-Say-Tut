//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
                    question(q: "Aklından Bir Sayı Tut", a: "True"),
                    question(q: "Bunu 9 ile çarpın.", a: "True"),
                    question(q: "Çıkan sayının hanelerini toplayın.", a: "True"),
                    question(q: "Toplam sayının ilk harfiyle başlayan bir ülke bulun.", a: "True"),
                    question(q: "Bu ülkenin sondan üçüncü harfiyle başlayan bir şehir bulun.", a: "True"),
                    question(q: "Şimdi şehrin sondan üçüncü harfiyle başlayan bir hayvan düşün...", a: "True"),
                    question(q: "Cevap : Danimarka, Rize, İnek değil mi?", a: "True")
    ]

    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUi()

    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
            
        
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
            progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        } else {
            questionNumber = 0
        }
        updateUi()
        
    }
    
    func updateUi() {
        questionLabel.text = quiz[questionNumber].text
        
    }
    
    
}

