//
//  TutorialViewcontroller.swift
//  Carousel
//
//  Created by Poudel, Trilochan on 10/2/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class TutorialViewcontroller: UIViewController {
    
    
    @IBOutlet weak var tutorialScreenScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tutorialScreenScrollView.contentSize = CGSize(width: 1498, height: 650)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
