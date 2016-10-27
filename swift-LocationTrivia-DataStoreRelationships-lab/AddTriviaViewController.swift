//
//  AddTriviaViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Tameika Lawrence on 10/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

    

class AddTriviaViewController: UIViewController {
    
    @IBOutlet weak var triviaField: UITextField!
    
    @IBOutlet weak var saveTriviaBtn: UIButton!
    
    @IBOutlet weak var cancelTriviaBtn: UIButton!
    
    var newLocation: Location!
    var saveTriviaClicked = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        triviaField.accessibilityLabel = "Trivium Text Field"
        triviaField.accessibilityIdentifier = "Trivium Text Field"
        
        saveTriviaBtn.accessibilityLabel = "Save Button"
        saveTriviaBtn.accessibilityIdentifier = "Save Button"
        
        cancelTriviaBtn.accessibilityLabel = "Cancel Button"
        cancelTriviaBtn.accessibilityIdentifier = "Cancel Button"

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    
    
    @IBAction func saveTriviaBtn(_ sender: UIButton) {
        
        if triviaField.text != "" {
            
            if let enteredTrivia = triviaField.text {
                
                var newTrivia = Trivium.init(content: enteredTrivia, likes: 0)
                
                self.newLocation.trivia.append(newTrivia)
                
                saveTriviaClicked = true
                    
                self.dismiss(animated: true) {
                }
            }
        }
    }

    
    
    @IBAction func cancelTriviaBtn(_ sender: UIButton) {
        
        self.dismiss(animated: true) {
        }
    }
    
  }
    
    
    
//protocol PassingInformation {
//    var newLocationObject: Location
//    }

    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


