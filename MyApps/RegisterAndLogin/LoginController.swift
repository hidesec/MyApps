//
//  LoginController.swift
//  MyApps
//
//  Created by sarkom3 on 13/04/19.
//  Copyright © 2019 sarkom3. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func loginButton(_ sender: Any) {
        goToLogin()
    }
    
    func goToLogin() {
        if emailTextField.text?.count != 0 {
            if passwordTextField.text?.count != 0 {
                if emailTextField.text == "raihanhafis@gmail.com" && passwordTextField.text == "123456"{
                    let controller = self.storyboard?.instantiateViewController(withIdentifier: "tabBarController") as! UITabBarController
                    self.present(controller, animated: true, completion: nil)
                } else{
                    let alert = UIAlertController(title: "WARNING!", message: "Email atau password yang Anda masukkan salah!", preferredStyle: .alert)
                    let alertButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert.addAction(alertButton)
                    self.present(alert, animated: true, completion: nil)
                }
            }else{
                let alert = UIAlertController(title: "WARNING!", message: "Password Anda kosong!", preferredStyle: .alert)
                let alertButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(alertButton)
                self.present(alert, animated: true, completion: nil)
            }
        }else{
            let alert = UIAlertController(title: "WARNING!", message: "Email Anda kosong!", preferredStyle: .alert)
            let buttonAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(buttonAlert)
            self.present(alert, animated: true, completion: nil)
        }

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
