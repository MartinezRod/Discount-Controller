//
//  ViewController.swift
//  DiscountCalculator
//
//  Created by Rodrigo Martinez on 3/24/17.
//  Copyright © 2017 Rodrigo Martinez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    //Scroll
    @IBOutlet weak var scrollView: UIScrollView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let vc0 = ViewController0(nibName: "ViewController0", bundle: nil)
        
        self.addChildViewController(vc0)
        self.scrollView.addSubview(vc0.view)
        vc0.didMove(toParentViewController: self)
        
        
        
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle:nil)
        
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMove(toParentViewController: self)
        
        
        self.scrollView.contentSize = CGSize(width:self.view.frame.size.width * 2, height:self.view.frame.size.height-66 )
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

