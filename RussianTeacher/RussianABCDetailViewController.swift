//
//  ViewController.swift
//  RussianTeacher
//
//  Created by Dudas, Peter on 20/04/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import UIKit

class RussianABCDetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var testPronounciationField: UITextField! {
        didSet {
            testPronounciationField.delegate = self
            testPronounciationField.becomeFirstResponder()
        }
    }
    
    var character: CyrillCharacter! {
        didSet {
            capitalLabel?.text = character.capitalLetter
            letterLabel?.text = character.letter
        }
    }
    
    @IBOutlet weak var capitalLabel: UILabel! {
        didSet {
            capitalLabel.text = character.capitalLetter
        }
    }
    
    @IBOutlet weak var letterLabel: UILabel! {
        didSet {
            letterLabel.text = character.letter
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        testPronounciationField.resignFirstResponder()
        if textField.text == "" {
            return true
        }
        if checkCorrectPronounciation(textField.text!) {
            displayMessage("Your guess is right!")
        } else {
            displayMessage("Your guess is wrong!")
        }
        
        return true
    }
    
    private func checkCorrectPronounciation(text: String) -> Bool {
        let allChars = DataModel.sharedInstance.cyrillCharacters
        for char in allChars {
            if char.capitalLetter == character.capitalLetter && char.pronounciation == text {
                return true
            }
        }
        return false
    }
    
    private func displayMessage(message: String?) {
        let alertController = UIAlertController(title: "Result", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

