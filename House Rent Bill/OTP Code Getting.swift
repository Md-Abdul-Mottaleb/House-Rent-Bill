
import UIKit

class OTP_Code_Getting: UIViewController {
    var number: String?
    
    
    
    
    @IBOutlet weak var numberOutlet: UILabel!
    
    
    @IBOutlet weak var firstOTPcodeTextField: UITextField!
    
    @IBOutlet weak var secondOTPcodeTextField: UITextField!
    
    @IBOutlet weak var thirdOTPcodeTextField: UITextField!
    
    @IBOutlet weak var forthOTPcodeTextField: UITextField!
    
    @IBOutlet weak var OTPVerifyButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        numberOutlet.text = "\(number ?? "No Number" )"
        
        OTPVerifyButtonOutlet.layer.cornerRadius = 20
        
        let bottomline = CALayer()
        
         bottomline.frame = CGRect(x: 0, y: firstOTPcodeTextField.frame.height - 2, width: firstOTPcodeTextField.frame.width, height: 2)
        
         bottomline.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        firstOTPcodeTextField.borderStyle = .none
        firstOTPcodeTextField.layer.addSublayer(bottomline)
    
        let bottomline1 = CALayer()
         bottomline1.frame = CGRect(x: 0, y: secondOTPcodeTextField.frame.height - 2, width: secondOTPcodeTextField.frame.width, height: 2)
        
         bottomline1.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        secondOTPcodeTextField.borderStyle = .none
        secondOTPcodeTextField.layer.addSublayer(bottomline1)
        
        let bottomline2 = CALayer()
        
         bottomline2.frame = CGRect(x: 0, y: thirdOTPcodeTextField.frame.height - 2, width: thirdOTPcodeTextField.frame.width, height: 2)
        
         bottomline2.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        thirdOTPcodeTextField.borderStyle = .none
        thirdOTPcodeTextField.layer.addSublayer(bottomline2)
    
        let bottomline3 = CALayer()
         bottomline3.frame = CGRect(x: 0, y: forthOTPcodeTextField.frame.height - 2, width: forthOTPcodeTextField.frame.width, height: 2)
        
         bottomline3.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        forthOTPcodeTextField.borderStyle = .none
        forthOTPcodeTextField.layer.addSublayer(bottomline3)
        
        
        
    }
    
    

    @IBAction func resendOTPButton(_ sender: Any) {
        
        
    }
    
   
    @IBAction func verifyOTPButton(_ sender: Any) {
        
        
        if firstOTPcodeTextField.text == "1" && secondOTPcodeTextField.text == "2" && thirdOTPcodeTextField.text == "3" && forthOTPcodeTextField.text == "4" {
            
            let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "login")

            navigationController?.pushViewController(vc, animated: true)
        }else{
            
            Alert()
            
        }
    }
    func Alert(){
        let alert = UIAlertController(title: "Oops!", message: "Fill Up Text Fields from OPT Code ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.cancel, handler: {_ in
            
        }))
        self.present(alert, animated: true, completion: nil)
    
    }
}
