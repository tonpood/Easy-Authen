//
//  ViewController.swift
//  Easy Authen
//
//  Created by Teacher on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var strUser: String?
    var strPassword: String?
    let dicUser = ["ton": "1234", "pood": "5678", "tonp": "4321"]
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        
        
        //Get Value From TextField
        strUser = userTextField.text
        strPassword = passwordTextField.text
        
        //Show User & Pass on Console
        print("User ==> \(strUser!)")
        print("Password ==> \(strPassword!)")
        
        //Find Count String
        let intUser = strUser?.characters.count
        let intPass = strPassword?.characters.count
        
        print("intUser ==> \(intUser!)")
        print("intPass ==> \(intPass!)")
        
        //Call checkSpace
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassword!) {
            
            //No Space
            print("ผ่านได้")
            showMessage(strMessage: "")
            checkUserPass(strUser: strUser!, strPassword: strPassword!)
            
            
        }   else {
            
            //Have Space
            print("ไม่ผ่าน")
            showMessage(strMessage: "กรุณากรอก User & Password")
        }
        
        
        
        
    }   // loginButton
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }   // Main Method
    
    func checkUserPass(strUser: String, strPassword: String) -> Void {
        
        //checkUser
        if let testUser = dicUser[strUser] {
            print("Test ==> \(testUser)")
            
        }   else {
                print("TestUser Nil")
                showMessage(strMessage: "No " + strUser + "ไม่มีข้อมูล")
        
        }
        
    }// CheckUserPass
    
    
    
    func showMessage(strMessage: String) -> Void {
        messageLabel.text = strMessage
    }
    
    
    
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
            //Have Space
            result = false
        }
        
        
        
        return result
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   // didRecive

    
    
    
}   // Main Class

