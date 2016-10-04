//
//  SettingViewController.swift
//  Carousel
//
//  Created by Poudel, Trilochan on 10/3/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var settingImageView: UIImageView!
    
    
    @IBOutlet weak var settingScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingScrollView.contentSize = settingImageView.frame.size
        
    }
    @IBAction func exitButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
