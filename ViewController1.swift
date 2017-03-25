//
//  ViewController1.swift
//  DiscountCalculator
//
//  Created by Rodrigo Martinez on 3/24/17.
//  Copyright © 2017 Rodrigo Martinez. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    
    @IBOutlet weak var originalPrice: UILabel!
    
    @IBOutlet weak var savings: UILabel!
    
    
    @IBOutlet weak var paying: UILabel!
    
    @IBOutlet weak var savePerc: UILabel!
    @IBOutlet weak var payPerc: UILabel!
    
    var OGPrice = String()
    var Savingss = String()
    var Payingg = String()
    var savingsPerc = String()
    var payingPerc = String()
    
    var abc = Float()
    var defg = Float()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let originalValue = Float(abc)
        let newPrice = Float (defg)
        let PaayPerc = Float(newPrice / originalValue)
        let SavingsAmt = Float(originalValue - newPrice)
        let SaavePerc = Float (SavingsAmt / originalValue)
        
       // let savingsPerc = String (SaavePerc)
        //let payingPerc = String (PaayPerc)
        
        
        
        originalPrice.text = String("Original Price is $ \(originalValue) ")
        savings.text = String( "You are Saving $\(SavingsAmt) ")
        paying.text = String(" You are Paying $\(newPrice) ")
        savePerc.text = String("\(SaavePerc) %")
        payPerc.text = String ("\(PaayPerc) %")
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
