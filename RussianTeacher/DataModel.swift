//
//  DataModel.swift
//  RussianTeacher
//
//  Created by Dudas, Peter on 20/04/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import Foundation

class DataModel {
    
    static let sharedInstance = DataModel()
    
    var cyrillCharacters: [CyrillCharacter] {
        return [
            CyrillCharacter(capitalLetter: "А", letter: "а", pronounciation: "á", example: "два - two"),
            CyrillCharacter(capitalLetter: "Б", letter: "б", pronounciation: "b", example: "без - without"),
            CyrillCharacter(capitalLetter: "В", letter: "в", pronounciation: "v", example: "вот - here"),
            CyrillCharacter(capitalLetter: "Г", letter: "г", pronounciation: "g", example: "год - year"),
            CyrillCharacter(capitalLetter: "Д", letter: "д", pronounciation: "d", example: "да - yes"),
            CyrillCharacter(capitalLetter: "Е", letter: "е", pronounciation: "e, je", example: "не - no"),
            CyrillCharacter(capitalLetter: "Ё", letter: "ё", pronounciation: "jo", example: "своё - my, our"),
            CyrillCharacter(capitalLetter: "Ж", letter: "ж", pronounciation: "zs", example: "жук - bug"),
            CyrillCharacter(capitalLetter: "З", letter: "з", pronounciation: "z", example: "за - behind"),
            CyrillCharacter(capitalLetter: "И", letter: "и", pronounciation: "i, ji", example: "или - or"),
            CyrillCharacter(capitalLetter: "Й", letter: "й", pronounciation: "j", example: "мой - my"),
            CyrillCharacter(capitalLetter: "К", letter: "к", pronounciation: "k", example: "кто - who"),
            CyrillCharacter(capitalLetter: "Л", letter: "л", pronounciation: "l", example: "ли - whether"),
            CyrillCharacter(capitalLetter: "М", letter: "м", pronounciation: "m", example: "чем - than"),
            CyrillCharacter(capitalLetter: "Н", letter: "н", pronounciation: "n", example: "но - but"),
            CyrillCharacter(capitalLetter: "О", letter: "о", pronounciation: "o, (a)", example: "он - he"),
            CyrillCharacter(capitalLetter: "П", letter: "п", pronounciation: "p", example: "под - under"),
            CyrillCharacter(capitalLetter: "Р", letter: "р", pronounciation: "r", example: "при - attached to"),
            CyrillCharacter(capitalLetter: "С", letter: "с", pronounciation: "sz", example: "если - if"),
            CyrillCharacter(capitalLetter: "Т", letter: "т", pronounciation: "t", example: "тот - that"),
            CyrillCharacter(capitalLetter: "У", letter: "у", pronounciation: "u", example: "уже - already"),
            CyrillCharacter(capitalLetter: "Ф", letter: "ф", pronounciation: "f", example: "форма - form"),
            CyrillCharacter(capitalLetter: "Х", letter: "х", pronounciation: "h", example: "хорошо - well"),
            CyrillCharacter(capitalLetter: "Ц", letter: "ц", pronounciation: "c", example: "конец - end"),
            CyrillCharacter(capitalLetter: "Ч", letter: "ч", pronounciation: "cs", example: "четыре - four"),
            CyrillCharacter(capitalLetter: "Ш", letter: "ш", pronounciation: "s", example: "ваш - yours"),
            CyrillCharacter(capitalLetter: "Щ", letter: "щ", pronounciation: "scs", example: "ещё - yet, still"),
            CyrillCharacter(capitalLetter: "Ъ", letter: "ъ", pronounciation: "твёрдый знак", example: "-"),
            CyrillCharacter(capitalLetter: "Ы", letter: "ы", pronounciation: "i", example: "ты - you"),
            CyrillCharacter(capitalLetter: "Ь", letter: "ь", pronounciation: "мягкий знак", example: "-"),
            CyrillCharacter(capitalLetter: "Э", letter: "э", pronounciation: "e", example: "это - this, that"),
            CyrillCharacter(capitalLetter: "Ю", letter: "ю", pronounciation: "ju", example: "юг - south"),
            CyrillCharacter(capitalLetter: "Я", letter: "я", pronounciation: "já", example: "себя - myself")
        ]
    }
    
    
}