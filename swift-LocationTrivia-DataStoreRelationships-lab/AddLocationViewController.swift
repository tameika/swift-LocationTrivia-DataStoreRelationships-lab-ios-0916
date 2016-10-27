//
//  AddLocationViewController.swift
//  swift-LocationTrivia-DataStoreRelationships-lab
//
//  Created by Tameika Lawrence on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AddLocationViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var latitudeField: UITextField!
    
    
    @IBOutlet weak var longitudeField: UITextField!
    
    
    @IBOutlet weak var saveBtnOutlet: UIButton!
    
    
    @IBOutlet weak var cancelBtnOutlet: UIButton!
    
    var saveClicked = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameField.accessibilityLabel = "nameField"
        nameField.accessibilityIdentifier = "nameField"
        
        latitudeField.accessibilityLabel = "latitudeField"
        latitudeField.accessibilityIdentifier = "latitudeField"
        
        longitudeField.accessibilityLabel = "longitudeField"
        longitudeField.accessibilityIdentifier = "longitudeField"
        
        saveBtnOutlet.accessibilityLabel = "saveButton"
        saveBtnOutlet.accessibilityIdentifier = "saveButton"
        
        cancelBtnOutlet.accessibilityLabel = "cancelButton"
        cancelBtnOutlet.accessibilityIdentifier = "cancelButton"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func useCurrentLocationBtn(_ sender: UIButton) {
    }
    
    
    
    @IBAction func saveLocationBtn(_ sender: UIButton) {
        saveClicked = false
        //self.saveBtnOutlet.isEnabled = false
        
        if (nameField.text != "") && (latitudeField.text != "") && (longitudeField.text != "") {
            
            if let newLatitude = Float(latitudeField.text!) {
                if let newLongitude = Float(longitudeField.text!) {
                    if let newName = nameField.text {
                        
                        let newLocation = Location(name: newName, latitude: newLatitude, longitude: newLongitude)
                        print(newLocation)
                        
                        
                        LocationsDataStore.sharedInstance.locations.append(newLocation)
                        
                        saveClicked = true
                        
                        if saveClicked == true {
                            self.dismiss(animated: true) {
                            }

                            
                        }
                        
                    }
                }
                
            }
            
        }
        
    }
    
    
    
    @IBAction func cancelLocationBtn(_ sender: UIButton) {
        
        self.dismiss(animated: true) {
        }
    }
    
    
    
    
    
    
    
 }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


