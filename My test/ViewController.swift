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
    var tag: Int = -1
    
    var helper = Helper()

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
    
    @IBAction func changeSign(_ sender: Any) {
        let num: Float = Float(display.text!)! * -1
        self.display.text = "\(num)"
    }
    
    
    /**
     * this function will divide the dsiplay number
     * by a 100
     * @params screen
     */
    @IBAction func percentage(_ sender: Any) {
        if(isValid(value: display.text!)){
            let num = Float(display.text!)! / 100
            self.display.text = "\(num)"
            number1 = display.text!
            toReset = true
        }
    }
    
    
    @IBAction func num(_ sender: UIButton) {
        let num = sender.titleLabel?.text!
        if((isValid(value: display.text!) || sender.titleLabel?.text! == ".") && !toReset){
            self.display.text = display.text! + num!
        } else {
            self.display.text = num!
            toReset = false
        }
    }

    /**
     * this function will reset the display
     * to default value (0)
     * @params screen
     */
    @IBAction func toClear(_ sender: Any) {
        display.text = "0"
        tag = -1
        number1 = ""
        toReset = false
        
    }
    
    
    /**
     * this function will handle all the operations
     */
    
    @IBAction func doOperations(_ sender: UIButton) {
        
        if(sender.tag != 5){
            number1 = display.text!
            tag = sender.tag
            toReset = true
        } else if(sender.tag == 5 && tag != -1){
            display.text = helper.main(num1: number1, num2: display.text!, tag: tag)
        }

    }
}

