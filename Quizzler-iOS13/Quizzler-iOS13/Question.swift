//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Mustafa Adnan Tatlıcı on 23.09.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct question {
    let text: String
    let answer: String
    
    init(q : String , a : String) {
        text = q
        answer = a
    }
}
