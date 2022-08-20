//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Joel Gurivireddy on 7/14/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var question : String
    var answer : String
    
    init(q : String, a : String) {
        self.question = q
        self.answer = a
    }
}
