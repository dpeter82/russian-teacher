//
//  Overview.swift
//  RussianTeacher
//
//  Created by Dudas, Peter on 28/04/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import UIKit


protocol OverviewViewDelegate: class {
    func performNavigation(id: String)
}

class OverviewView: UIView {

    weak var delegate: OverviewViewDelegate?
    
    var russianABCButton: UIButton?
    var basicExpressionsButton: UIButton?
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.russianABCButton = createButton()
        addLabelToButton(self.russianABCButton!, labelText: "Russian ABC")
        addSubview(self.russianABCButton!)
        
        self.basicExpressionsButton = createButton()
        addLabelToButton(self.basicExpressionsButton!, labelText: "Basic Words")
        addSubview(self.basicExpressionsButton!)
        
    }
    
    private func createButton() -> UIButton {
        let button = UIButton()
        button.addTarget(self, action: "buttonTapped:", forControlEvents: .TouchUpInside)

        return button
    }
    
    private func addLabelToButton(button: UIButton, labelText: String) {
        let labelFrame = CGRectMake(0, 45, 110, 24)
        let label = UILabel(frame: labelFrame)
        label.textAlignment = .Center
        
        //        let redColor: UIColor = UIColor.redColor()
        //        let textAttributesTop = [
        //            NSFontAttributeName: UIFont(name: "Comfortaa-Regular", size: 20),
        //            NSForegroundColorAttributeName: redColor
        //        ]
        
        //let labelTextTop = NSMutableAttributedString(string: label, attributes: textAttributesTop)
        let labelTextTop = NSMutableAttributedString(string: labelText)
        label.attributedText = labelTextTop
        
        button.addSubview(label)

    }
    
    private func calculateFrame(buttonName: String) -> CGRect {
        var coordX = bounds.width/3 - CGFloat(110)/2
        var coordY = bounds.height/5
        
        switch buttonName {
            case "Russian ABC":
                coordX = bounds.width*0.15
                coordY = coordY + 30
            case "Basic Words":
                coordX = bounds.width-(bounds.width*0.15+110)
                coordY = coordY + 30
            default: break
        }
        
        return CGRectMake(coordX, coordY, 110, 120)

    }
    
    override func layoutSubviews() {
        russianABCButton!.frame = calculateFrame("Russian ABC")
        russianABCButton!.backgroundColor = UIColor.blueColor()
        russianABCButton!.layer.cornerRadius = 10
        russianABCButton!.layer.borderWidth = 1
        russianABCButton!.layer.borderColor = UIColor.blackColor().CGColor
        
        basicExpressionsButton!.frame = calculateFrame("Basic Words")
        basicExpressionsButton!.backgroundColor = UIColor.greenColor()
        basicExpressionsButton!.layer.cornerRadius = 10
        basicExpressionsButton!.layer.borderWidth = 1
        basicExpressionsButton!.layer.borderColor = UIColor.blackColor().CGColor

    }
    
    func buttonTapped(button: UIButton) {
        switch button {
            case russianABCButton!:
                self.delegate?.performNavigation("showABC")
            case basicExpressionsButton!:
                self.delegate?.performNavigation("showBasics")

            default:
                break
        }
        
        
    }

}
