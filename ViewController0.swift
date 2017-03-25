//
//  ViewController0.swift
//  DiscountCalculator
//
//  Created by Rodrigo Martinez on 3/24/17.
//  Copyright © 2017 Rodrigo Martinez. All rights reserved.
//

import UIKit

class ViewController0: UIViewController {
    //MARK: Outlets
    
    @IBOutlet weak var price: UITextField!
    
    
    @IBOutlet weak var dollarOff: UITextField!
    
    
    @IBOutlet weak var discount: UITextField!
    
    
    @IBOutlet weak var otherDiscount: UITextField!
    
    @IBOutlet weak var tax: UITextField!
    
    
    @IBOutlet weak var orgPrice: UILabel!
    
    @IBOutlet weak var discPrice: UILabel!
    
    
    
    
    
    //MARK: Actions
    
    
    @IBAction func Calc(_ sender: Any) {
        
        let Price = Double(price.text!)
        
        let Dollars = Double(dollarOff.text!)
        
        let Discount = Double(discount.text!)
        
        let otherDisc = Double(otherDiscount.text!)
        
        let Tax = Double(tax.text!)
        
        let Answer0 = Double(  (Price! - Dollars!))
        let Answer1 = Double( Answer0 - ( Answer0 * (Discount! * (0.001))))
        let Answer2 = Double (Answer1 - (Answer1 * (otherDisc! * (0.001))))
        let FinalAns = Double(Answer2 + (Answer2 * (Tax! * (0.001))))
        orgPrice.text = price.text!
        discPrice.text = "\(FinalAns)"
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController : ViewController1 = segue.destination as! ViewController1
        DestViewController.abc = Float(price.text!)!
        DestViewController.defg = Float(discPrice.text!)!
        DestViewController.OGPrice = "Original Price \(price.text!)"
        DestViewController.Payingg = " You Pay  \(discPrice.text!)"
       
    
    
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
