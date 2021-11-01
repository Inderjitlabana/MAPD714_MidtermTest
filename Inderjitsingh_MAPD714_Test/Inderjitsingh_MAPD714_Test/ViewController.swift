//
//  ViewController.swift
//  Inderjitsingh_MAPD714_Test
//
//  Created by Inderjit Singh on 2021-10-31.

//File Name: Midterm Test
// Author's Name: Inderjitsingh Darshansingh Labana
//Student Id: 301149169
//Date: 2021-10-31
// The stepper code implemented in my project is taken from https://www.ioscreator.com/tutorials/stepper-ios-tutorial wrote by Arthur Knopper on February 05, 2019
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepper5: UIStepper!
    @IBOutlet weak var quanlbl5: UILabel!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var quanlbl4: UILabel!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var quanlbl3: UILabel!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var quanlbl2: UILabel!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var quanlbl1: UILabel!
    @IBOutlet weak var fifthitem: UITextField!
    @IBOutlet weak var fourthitem: UITextField!
    @IBOutlet weak var thirditem: UITextField!
    @IBOutlet weak var seconditem: UITextField!
    @IBOutlet weak var firstitem: UITextField!
    @IBOutlet weak var shoppinglistname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // The following code
        stepper1.wraps=true     //setting stepper wraps to true will return the stepper to minimum value if it exceeds the maximum value
        stepper1.autorepeat=true    // setting the stepper autorepeat to true will allow user pressing and holding on the stepper repeatedly alters value
        stepper1.maximumValue=10    // The maximum value of stepper
        
        stepper2.wraps=true
        stepper2.autorepeat=true
        stepper2.maximumValue=10
        
        stepper3.wraps=true
        stepper3.autorepeat=true
        stepper3.maximumValue=10
        
        stepper4.wraps=true
        stepper4.autorepeat=true
        stepper4.maximumValue=10
        
        stepper5.wraps=true
        stepper5.autorepeat=true
        stepper5.maximumValue=10
    }

    
   //Method to close keyboard for shopping list name textfield
    @IBAction func textFieldDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
   
    //Method to close keyboard for First Item textfield
    @IBAction func firstitemend(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    //Method to close keyboard for Second Item textfield
    @IBAction func seconditemend(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    //Method to close keyboard for Third Item textfield
    @IBAction func thirditemend(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    //Method to close keyboard for Fourth Item textfield
    @IBAction func fourthitemend(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    //Method to close keyboard for Fifth Item textfield
    @IBAction func fifthitemend(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    //Method to change the value of Label1 by incrementing or decrementing Stepper 1
    @IBAction func stepper1valchange(_ sender: UIStepper) {
        quanlbl1.text = Int(sender.value).description
    }
    
    //Method to change the value of Label2 by incrementing or decrementing Stepper 2
    @IBAction func stepper2valchange(_ sender: UIStepper) {
        quanlbl2.text = Int(sender.value).description
    }
    
    //Method to change the value of Label3 by incrementing or decrementing Stepper 3
    @IBAction func stepper3valchange(_ sender: UIStepper) {
        quanlbl3.text = Int(sender.value).description
    }
    
    //Method to change the value of Label4 by incrementing or decrementing Stepper 4
    @IBAction func stepper4valchange(_ sender: UIStepper) {
        quanlbl4.text = Int(sender.value).description
    }
    
    //Method to change the value of Label5 by incrementing or decrementing Stepper 5
    @IBAction func stepper5valchange(_ sender: UIStepper) {
        quanlbl5.text = Int(sender.value).description
    }
    
    //Method to clear the default value of Shopping List name textfield
    @IBAction func textfieldchange(_ sender: UITextField) {
        shoppinglistname.text=""
    }
    
    //Method to clear all text from the textfields and stepper labels
    @IBAction func cn(_ sender: UIButton) {
        shoppinglistname.text=""
        firstitem.text=""
        seconditem.text=""
        thirditem.text=""
        fourthitem.text=""
        fifthitem.text=""
        //stepper1.value=0
        quanlbl1.text="0"
        quanlbl2.text="0"
        quanlbl3.text="0"
        quanlbl4.text="0"
        quanlbl5.text="0"
    }
}

