//
//  ViewController.swift
//  Healer
//
//  Created by Sarvesh Patel on 16/02/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var gifView: UIImageView!
    
    //MARK:- IBoutlet for image
    @IBOutlet weak var eyeImage: UIImageView!
    //MARK:- IBoutlet for textField
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var employeeTextField: UITextField!
    var loginViewModel = LoginViewModel()
    
    var loginResponseModelArray = [LoginResponseModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
            gifView.loadGif(name: "nature")
           
   }
    
    //MARK:- Action for forgotPassword
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        let forgotVC = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
        self.present(forgotVC, animated: true, completion: nil)
        
    }
    //MARK:- Action for eyeButton
    @IBAction func eyeButtonPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        
        
        
       loginAPI()
        
    }
        
}







/*
 
 var model: Model?{
 
 didSet{
 cell.label.text = arr[indexpath.row].name
 
 }
 
 }
 
 cell.model = Model
 
 
 
 
 
 */
