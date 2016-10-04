//
//  IntroViewController.swift
//  Carousel
//
//  Created by Poudel, Trilochan on 9/27/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    @IBOutlet weak var introScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.navigationController?.isNavigationBarHidden = true
         introScrollView.contentSize = CGSize(width: 386, height: 1320)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
   
}
