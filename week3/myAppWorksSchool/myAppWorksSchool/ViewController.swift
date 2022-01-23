//
//  ViewController.swift
//  myAppWorksSchool
//
//  Created by Jenny Hung on 2022/1/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    var loginType = 0   // 預設 segmentedControl -> Login
    
    
    var userAccountPassword = ["appworks_school@gmail.com": "1234"] // 存放帳密字典
    
    var userAccount = ""   // User 輸入的帳號
    var userPassword = ""  // User 輸入的密碼
    var userCheck = ""     // User 輸入的檢查碼
    
    var alertTitle = ""     // Alert 標題
    var alertMessage = ""   // Alert 內容

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeTyp()    // Login 的檢查碼為 disable
        
    }
    
    @IBAction func ChangLoginType(_ sender: UISegmentedControl) {
        //print(sender.selectedSegmentIndex)  // 0 -> Login, 1 -> Sign up
        
        loginType = sender.selectedSegmentIndex  // segmentedControl Index
        
        changeTyp()

    }
    
    @IBAction func checkButton(_ sender: Any) {
        userAccount = accountTextField.text!
        userPassword = passwordTextField.text!
        userCheck = checkTextField.text!
        
        if(loginType == 0) {  // 當為 Login 時
            checkLogin()
        }
        else {                // 當為 Sign up 時
            checkSignup()
        }
        
        alertAction()  // alert 訊息
        
    }
    
    func changeTyp() {
        
        // 切換 Login / sign in 時，將輸入框內容清空
        accountTextField.text = nil
        passwordTextField.text = nil
        checkTextField.text = nil
        
        // 若是選擇到 Login 時 (0 -> Login)
        if(loginType == 0) {
            checkTextField.isUserInteractionEnabled = false  // 檢查碼輸入框 disable
            checkTextField.backgroundColor = UIColor.darkGray  // 輸入框顏色改為深灰
            checkLabel.textColor = UIColor.darkGray    // Check 文字顏色改為深灰
        }
        // 若是選擇到 Login 時 (1 -> sign in)
        else {
            checkTextField.isUserInteractionEnabled = true
            checkTextField.backgroundColor = nil
            checkLabel.textColor = nil
        }
    }
    
    func checkLogin() {   // 檢查 Login
        
        if(userAccount.isEmpty == true) {   // 檢查帳號輸入框不可為空
            alertTitle = "Error"
            alertMessage = "Account should not be empty."
        }
        else if(userPassword.isEmpty == true) {   // 檢查密碼輸入框不可為空
            alertTitle = "Error"
            alertMessage = "Password should not be empty."
        }
        else if(userAccountPassword[userAccount] != nil) {   // 檢查帳號是否存在於字典
            if (userPassword == userAccountPassword[userAccount]) {   // 檢查密碼
                alertTitle = "Success"
                alertMessage = "Login success!!"
            }
            else {
                alertTitle = "Error"
                alertMessage = "Password error, login fail."
            }
        }
        else {
            alertTitle = "Error"
            alertMessage = "Account error, login fail."
        }
    }
        
    func checkSignup() {  // 檢查 Sign up
        if(userAccount.isEmpty == true) {   // 檢查帳號輸入框不可為空
            alertTitle = "Error"
            alertMessage = "Account should not be empty."
        }
        else if(userPassword.isEmpty == true) {   // 檢查密碼輸入框不可為空
            alertTitle = "Error"
            alertMessage = "Password should not be empty."
        }
        else if(userCheck.isEmpty == true) {    // 檢查檢查碼輸入框不可為空
            alertTitle = "Error"
            alertMessage = "Check should not be empty."
        }
        else if(userAccountPassword[userAccount] != nil) {  // 帳號不可存在於字典中
            alertTitle = "Error"
            alertMessage = "Account already exists, sign up fail."
        }
        else {
            userAccountPassword[userAccount] = userPassword   // 新帳密加到字典中
            alertTitle = "Success"
            alertMessage = "Sign up success!!"
        }
    }
    
    func alertAction() {
        let alert = UIAlertController(title : alertTitle, message: alertMessage, preferredStyle: .alert)  // 跳出的訊息框中，必須設定 title(標題)、message(內文)、preferredStyle(屬性)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action) // 從 alert 中在加入行為 action
        
        present(alert, animated: true,completion: nil)
    }
}

