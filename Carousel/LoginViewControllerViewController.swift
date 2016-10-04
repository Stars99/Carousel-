//
//  LoginViewControllerViewController.swift
//  Carousel
//
//  Created by Poudel, Trilochan on 9/27/16.
//  Copyright © 2016 Stars99. All rights reserved.
//

import UIKit

class LoginViewControllerViewController: UIViewController, UIScrollViewDelegate {
    
    
   let emailText = "email@gmail.com"
   let passwordText = "password"
    
    //Above the viewDidLoad method, define variables for the initial position of the buttonParentView, buttonInitialY and buttonOffset.
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    @IBOutlet weak var scrollViewOnLoginView: UIScrollView!
    //Outlet for Button parent View
    @IBOutlet weak var buttonParentView: UIView!
    //Create Outlets For the Views You Want to Offset.
    @IBOutlet weak var textFieldParentView: UIView!
    //Step 4: Define Variables
    var initialY: CGFloat!
    var offset: CGFloat!
    
    //email textfield
    @IBOutlet weak var emailTextField: UITextField!
    //password text field
    @IBOutlet weak var passwordTextField: UITextField!
    //Sign in button
    @IBOutlet weak var signInButton: UIButton!
    //ActivityIndicator button
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -20
        
        initialY = textFieldParentView.frame.origin.y
        offset = -70
        
        scrollViewOnLoginView.delegate = self
        
        //Scrolling the LoginView Controller
        scrollViewOnLoginView.contentSize = CGSize(width: 320, height: 1500)
        
        // Set the scroll view content size
        scrollViewOnLoginView.contentSize = scrollViewOnLoginView.frame.size
        // Set the content insets
        scrollViewOnLoginView.contentInset.bottom = 100
        
        //Register for the keyboard events
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
            
            self.textFieldParentView.frame.origin.y = self.initialY + self.offset
            
            // Move the button up above keyboard
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.buttonOffset
            
            // Scroll the scrollview up
            self.scrollViewOnLoginView.contentOffset.y = self.scrollViewOnLoginView.contentInset.bottom
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            self.textFieldParentView.frame.origin.y = self.initialY
        }
    }
    //Hide keyboard
    @IBAction func onTapAnyWhere(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func didPressBackBtn(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func didPressSignInButton(_ sender: UIButton) {
      // view.endEditing(true)
        
       activityIndicator.startAnimating()
        
        signInButton.isSelected = true
        
        // If both the email and password fields match what we are looking for...
        if emailTextField.text == emailText && passwordTextField.text == passwordText {
        
            delay(2, closure: {
                
                 // Stop animating the activity indicator.
                self.activityIndicator.stopAnimating()
                
                // Set the button state back to default, "Not Selected".
                self.signInButton.isSelected = false
                
               self.performSegue(withIdentifier: "signInButtonSegue", sender: nil)
            })
            
            
        }
        else {
            // Delay for 2 second
            delay(2, closure: {
                // Stop animating the activity indicator.
                self.activityIndicator.stopAnimating()
                // Set the button state back to default, "Not Selected".
                self.signInButton.isSelected = false
                
                let alertController = UIAlertController(title: "Oops!!", message: "Please type your email and password correctly", preferredStyle: .alert)
                // create an OK action
                let OKAction = UIAlertAction(title: "Ok", style: .default) { (action) in
                  
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
            
                self.present(alertController, animated: true, completion: nil)
                
            })
        }
    }
            
    
    @IBAction func didEditingTextFieldChanged(_ sender: AnyObject) {
        
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            signInButton.isEnabled = false
        }
        else {
            signInButton.isEnabled = true
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
