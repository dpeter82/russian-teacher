//
//  OverviewUIViewController.swift
//  RussianTeacher
//
//  Created by Dudas, Peter on 26/04/16.
//  Copyright © 2016 Dudas, Peter. All rights reserved.
//

import UIKit

class OverviewUIViewController: UIViewController, OverviewViewDelegate {

    let backgroundImage = UIImageView()
    
    @IBOutlet weak var overviewView: OverviewView? {
        didSet {
            overviewView?.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !self.view.subviews.contains(self.backgroundImage) {
            backgroundImage.image = UIImage(named: "overview_background")
            backgroundImage.frame = UIScreen.mainScreen().bounds
            self.view.insertSubview(backgroundImage, atIndex: 0)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func performNavigation(id: String) {
        performSegueWithIdentifier(id, sender: nil)
    }
}
