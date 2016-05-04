//
//  BasicPhrases.swift
//  RussianTeacher
//
//  Created by Aliaksei Paverany on 02/05/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import Foundation


class BasicPhrase {
    
    var phraseCategory: Category
    var phraseTest: String!
    var pronounciation: String!
    var translation: String!
    
    init(phraseCategory: Category, phraseTest: String, pronounciation: String, translation: String){
        self.phraseCategory = phraseCategory
        self.phraseTest = phraseTest
        self.pronounciation = pronounciation
        self.translation = translation
    }
}