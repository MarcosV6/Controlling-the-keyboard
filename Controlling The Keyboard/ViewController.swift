//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by marcos vallejo on 3/26/16.
//  Copyright © 2016 SpiderApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func buttonPressed(sender: AnyObject) {
        
        label.text = text.text
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.text.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<NSSet>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField! ) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }


}

