

import UIKit

class Sign_Up_ViewController: UIViewController {
    
    //var userInfo = LoginModel(email: "", password: "")
    var defaults = UserDefaults.standard
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        signUpButtonOutlet.layer.cornerRadius = 20
        
        let bottomline = CALayer()
        
         bottomline.frame = CGRect(x: 0, y: emailTextField.frame.height - 2, width: emailTextField.frame.width, height: 2)
        
         bottomline.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        
        
        emailTextField.borderStyle = .none
        emailTextField.layer.addSublayer(bottomline)
        
        let bottomline1 = CALayer()
        
         bottomline1.frame = CGRect(x: 0, y: passwordTextFiled.frame.height - 2, width: passwordTextFiled.frame.width, height: 2)
        
         bottomline1.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        
        
        passwordTextFiled.borderStyle = .none
        passwordTextFiled.layer.addSublayer(bottomline1)
        
        
      
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if emailTextField.text != "" || passwordTextFiled.text != "" {
            
            //userInfo.email = emailTextField.text ?? ""
            //userInfo.password = passwordTextFiled.text ?? ""
            
            let userInfo = LoginModel(email: emailTextField.text ?? "", password: passwordTextFiled.text ?? "")
            
            defaults.set(emailTextField.text ?? "", forKey: "EmailKey")
            defaults.set(passwordTextFiled.text ?? "", forKey: "PasswordKey")
            
            //defaults.set(userInfo, forKey: "userinfoKey")
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "OTPNumber")
            
            navigationController?.pushViewController(vc, animated: true)
            print("data already saved from userinfo",userInfo)
            
        }else{
            
            Alert()
        }
        
    }
    
    
    @IBAction func eyeButton(_ sender: Any) {
        
        if passwordTextFiled.isSecureTextEntry == true{
            
            passwordTextFiled.isSecureTextEntry = false
            
        }else{
            passwordTextFiled.isSecureTextEntry = true
        }
    }
    
    func Alert(){
        let alert = UIAlertController(title: "Oops!", message: "you are Trying credential", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.cancel, handler: {_ in
            
        }))
        self.present(alert, animated: true, completion: nil)
        
    }

}
