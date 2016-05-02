//
//  CyrillCharacter.swift
//  RussianTeacher
//
//  Created by Dudas, Peter on 20/04/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import Foundation

class CyrillCharacter {
    
    var capitalLetter: String!
    var letter: String!
    var pronounciation: String!
    var example: String!
    
    init(capitalLetter: String, letter: String, pronounciation: String, example: String) {
        self.capitalLetter = capitalLetter
        self.letter = letter
        self.pronounciation = pronounciation
        self.example = example
    }
    
}