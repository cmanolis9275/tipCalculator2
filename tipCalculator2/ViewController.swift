//
//  ViewController.swift
//  tipCalculator2
//
//  Created by Christos Manolis on 10/29/15.
//  Copyright © 2015 Christos Manolis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    let unselectedImage10 = UIImage(named: "10_unselected_image")
    let unselectedImage15 = UIImage(named: "15_unselected_image")
    let unselectedImage20 = UIImage(named: "20_unselected_image")
    let unselectedImage25 = UIImage(named: "25_unselected_image")
    let selectedImage10 = UIImage(named: "10_selected_image")
    let selectedImage15 = UIImage(named: "15_selected_image")
    let selectedImage20 = UIImage(named: "20_selected_image")
    let selectedImage25 = UIImage(named: "25_selected_image")
    var numberOfPeopleNumber = 1
    
    
    
    @IBAction func plusOnePerson(sender: AnyObject)
    {
        if numberOfPeopleNumber >= 1
        {
            ++numberOfPeopleNumber
            numberOfPeopleLabel.text = String(numberOfPeopleNumber)
            peopleWarning.text = " "
        }
    }
    @IBAction func minusOnePerson(sender: AnyObject)
    {
        if numberOfPeopleNumber > 1
        {
            --numberOfPeopleNumber
            numberOfPeopleLabel.text = String(numberOfPeopleNumber)
            peopleWarning.text = " "
        }
        else if numberOfPeopleNumber <= 1
        {
            peopleWarning.text = "MINIMUM PEOPLE"
        }
        
        
    }
    @IBAction func setNumberOfPeople(sender: AnyObject)
    {
        if numberOfPeopleTextField.text == ""         {
            numberOfPeopleTextField.placeholder = "ERROR"
            peopleWarning.text = " "
        }
        else if Int(numberOfPeopleTextField.text!)! <= 0
        {
            peopleWarning.text = "Number too low"
            numberOfPeopleTextField.placeholder = ""
            numberOfPeopleTextField.text = ""
            
            
            
        }
        else if numberOfPeopleTextField.text != "" && Int(numberOfPeopleTextField.text!)! >= 1
        {
            let numberOfPeopleSetText = numberOfPeopleTextField.text
            numberOfPeopleNumber = Int(numberOfPeopleSetText!)!
            numberOfPeopleLabel.text = String(numberOfPeopleNumber)
            numberOfPeopleTextField.placeholder = ""
            peopleWarning.text = " "
            view.endEditing(true)
        }
        
    }
    
    
    @IBAction func resetPeopleNumber(sender: AnyObject)
    {
        billTextField.text = ""
        tipLabel.text = ""
        taxLabel.text = ""
        perPersonLabel.text = ""
        numberOfPeopleNumber = 1
        numberOfPeopleLabel.text = String(numberOfPeopleNumber)
        numberOfPeopleTextField.text = ""
        peopleWarning.text = " "
        billTextField.placeholder = ""
        numberOfPeopleTextField.placeholder = ""
    }
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func calcualateTaxOnTap(sender: AnyObject)
    {
        let billString = billTextField.text
        let billNSString = NSString (string: billString!)
        let bill = billNSString.doubleValue
        let tax = String (format: "$%.2f" , (Double)(bill) * 0.15)
        taxLabel.text = tax
        
        
    }
    
    @IBAction func calculateTaxOnTap10(sender: AnyObject)
    {
        if billTextField.text == ""
        {
            billTextField.placeholder = "ERROR"
        }
        else if billTextField.text != ""
        {
            let bill =  Double(billTextField.text!)!
            let tax = Double(bill) * 0.10
            let fullPay = tax + Double(bill)
            tipLabel.text = String(format: "$%.2f", tax)
            taxLabel.text = String(format: "$%.2f", fullPay)
            perPersonLabel.text = String (format: "$%.2f", fullPay / Double(numberOfPeopleNumber))
            sender.setImage(selectedImage10, forState: UIControlState.Normal)
            secondTaxButton.setImage(unselectedImage15, forState: UIControlState.Normal)
            thirdTaxButton.setImage(unselectedImage20, forState: UIControlState.Normal)
            fourthTaxButton.setImage(unselectedImage25, forState: UIControlState.Normal)
            view.endEditing(true)
        }
    }
    
    @IBAction func calculateTaxOnTap15(sender: AnyObject)
    {
        if billTextField.text == ""
        {
            billTextField.placeholder = "ERROR"
        }
        else if billTextField.text != ""
        {
            
            let bill =  Double(billTextField.text!)!
            let tax = Double(bill) * 0.15
            let fullPay = tax + Double(bill)
            tipLabel.text = String(format: "$%.2f", tax)
            taxLabel.text = String(format: "$%.2f", fullPay)
            perPersonLabel.text = String (format: "$%.2f", fullPay / Double(numberOfPeopleNumber))
            sender.setImage(selectedImage15, forState: UIControlState.Normal)
            firstTaxButton.setImage(unselectedImage10, forState: UIControlState.Normal)
            thirdTaxButton.setImage(unselectedImage20, forState: UIControlState.Normal)
            fourthTaxButton.setImage(unselectedImage25, forState: UIControlState.Normal)
            view.endEditing(true)
        }
        
        
    }
    
    @IBOutlet weak var calculateTaxOnTap15: UIButton!
    @IBAction func calculateTaxOnTap20(sender: AnyObject)
    {
        if billTextField.text == ""
        {
            billTextField.placeholder = "ERROR"
        }
        else if billTextField.text != ""
        {
            
            let bill =  Double(billTextField.text!)!
            let tax = Double(bill) * 0.20
            let fullPay = tax + Double(bill)
            tipLabel.text = String(format: "$%.2f", tax)
            taxLabel.text = String(format: "$%.2f", fullPay)
            perPersonLabel.text = String (format: "$%.2f", fullPay / Double(numberOfPeopleNumber))
            sender.setImage(selectedImage20, forState: UIControlState.Normal)
            secondTaxButton.setImage(unselectedImage15, forState: UIControlState.Normal)
            firstTaxButton.setImage(unselectedImage10, forState: UIControlState.Normal)
            fourthTaxButton.setImage(unselectedImage25, forState: UIControlState.Normal)
            view.endEditing(true)
        }
        
    }
    
    @IBAction func calculateTaxOnTap25(sender: AnyObject)
    {
        if billTextField.text == ""
        {
            billTextField.placeholder = "ERROR"
        }
        else if billTextField.text != ""
        {
            
            let bill =  Double(billTextField.text!)!
            let tax = Double(bill) * 0.25
            let fullPay = tax + Double(bill)
            tipLabel.text = String(format: "$%.2f", tax)
            taxLabel.text = String(format: "$%.2f", fullPay)
            perPersonLabel.text = String (format: "$%.2f", fullPay / Double(numberOfPeopleNumber))
            sender.setImage(selectedImage25, forState: UIControlState.Normal)
            secondTaxButton.setImage(unselectedImage15, forState: UIControlState.Normal)
            thirdTaxButton.setImage(unselectedImage20, forState: UIControlState.Normal)
            firstTaxButton.setImage(unselectedImage10, forState: UIControlState.Normal)
            view.endEditing(true)
        }
        
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    

}

