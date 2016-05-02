//
//  CyrillCharacterTableViewCell.swift
//  RussianTeacher
//
//  Created by Dudas, Peter on 22/04/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import UIKit

class CyrillCharacterTableViewCell: UITableViewCell {

    var character: CyrillCharacter? {
        didSet {
            updateCell()
        }
    }
    
    //@IBOutlet weak var capitalLabel: UILabel!
    //@IBOutlet weak var letterLabel: UILabel!
    //@IBOutlet weak var pronounciationLabel: UILabel!
    //@IBOutlet weak var exampleLabel: UILabel!
    
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var letterLabel: UILabel!
    @IBOutlet weak var pronounciationLabel: UILabel!
    @IBOutlet weak var exampleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    private func updateCell() {
        capitalLabel.text = character!.capitalLetter
        letterLabel.text = character!.letter
        pronounciationLabel.text = character!.pronounciation
        exampleLabel.text = character!.example
    }
    
}
