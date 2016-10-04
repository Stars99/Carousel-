//
//  ImageTimeLineViewController.swift
//  Carousel
//
//  Created by Poudel, Trilochan on 10/3/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class ImageTimeLineViewController: UIViewController {
    
    
    @IBOutlet weak var imageTimeLIneScroll: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        imageTimeLIneScroll.contentSize = imageView.frame.size
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
}
