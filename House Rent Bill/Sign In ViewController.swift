
import UIKit

class Sign_In_ViewController: UIViewController {
    
    
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var signinButtonOutlet: UIButton!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signinButtonOutlet.layer.cornerRadius = 20
        
        let bottomline = CALayer()
        
         bottomline.frame = CGRect(x: 0, y: emailTextfield.frame.height - 2, width: emailTextfield.frame.width, height: 2)
        
         bottomline.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        emailTextfield.borderStyle = .none
        emailTextfield.layer.addSublayer(bottomline)
    
        let bottomline1 = CALayer()
         bottomline1.frame = CGRect(x: 0, y: passwordTextfield.frame.height - 2, width: passwordTextfield.frame.width, height: 2)
        
         bottomline1.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        passwordTextfield.borderStyle = .none
        passwordTextfield.layer.addSublayer(bottomline1)
        
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    
    
    @IBAction func signInButton(_ sender: Any) {
        
        
        if emailTextfield.text != "" || passwordTextfield.text != "" {
            
            let UserEmail = defaults.string(forKey: "EmailKey")!
            
            let UserPassword =  defaults.string(forKey: "PasswordKey")!
            
            let user = LoginModel(email: UserEmail, password: UserPassword)
            
            print(user)
            
            if emailTextfield.text == user.email && passwordTextfield.text == user.password {
                print("Login")
                
                defaults.set(true, forKey: "islogin")
                
                let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "home")
                
                navigationController?.pushViewController(vc, animated: true)
            }else{
                if emailTextfield.text == user.email {
                    
                }else{
                    AlertForEmail()
                }
                if passwordTextfield.text == user.password {
                    
                }else{
                    AlertForPassword()
                }
                
            }
        }else{
            
            Alert()
        }
       
    }
    
    
    @IBAction func eyeButton(_ sender: Any) {
        
        if passwordTextfield.isSecureTextEntry == true{
            
            passwordTextfield.isSecureTextEntry = false
            
        }else{
            passwordTextfield.isSecureTextEntry = true
        }
    }
    
    func Alert(){
        let alert = UIAlertController(title: "Oops!", message: "you are Trying credential", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.cancel, handler: {_ in
            
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func AlertForEmail(){
        let alert = UIAlertController(title: "Oops!", message: "your Email Address is incorrect", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.cancel, handler: {_ in
            
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    func AlertForPassword(){
        let alert = UIAlertController(title: "Oops!", message: "your password is incorrect", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.cancel, handler: {_ in
            
        }))
        self.present(alert, animated: true, completion: nil)
        
    }


}
