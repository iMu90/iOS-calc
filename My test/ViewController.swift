//
//  ViewController.swift
//  My test
//
//  Created by Muteb Alolayan on 9/12/17.
//  Copyright © 2017 Muteb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /* label */
    @IBOutlet var display: UILabel!
    
    /**
     * check if the user clicks on any of the operations
     */
    var toReset: Bool = false
    var number1: String!
    var operation: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     * this function is to check whether the dispaly
     * has a valid number 
     * any number other than the default value (0)
     * @params screen
     */
    func isValid(value: String) -> Bool
    {
        if(value == "0")
        {
            return false
        }
        return true
    }

    /**
     * this function will change the number sign
     * either positive or negative
     * @params screen
     */
    @IBAction func chnageSign(_ sender: Any) {
        
        // check if the value is NOT 0
        if(isValid(value: display.text!)){
            let num = Float(display.text!)! * -1
            self.display.text = String(num)
        }
    }
    
    
    /**
     * this function will divide the dsiplay number
     * by a 100
     * @params screen
     */
    @IBAction func percentage(_ sender: Any) {
        if(isValid(value: display.text!))
        {
            let num = Float(display.text!)! / 100
            self.display.text = String(num)
        }
    }
    
    
    @IBAction func divide(_ sender: Any) {
        
        if(isValid(value: display.text!)){
            self.number1 = display.text!
            self.toReset = true
            self.operation = "divide"
        }
    }
    
    
    @IBAction func num(_ sender: UIButton) {
        let num = sender.titleLabel?.text!
        if(isValid(value: display.text!)){
            self.display.text = display.text! + num!
        } else {
            self.display.text = num!
        }
        
    }

    /**
     * this function will reset the display
     * to default value (0)
     * @params screen
     */
    @IBAction func toClear(_ sender: Any) {
        self.display.text = "0"
    }
    

}

