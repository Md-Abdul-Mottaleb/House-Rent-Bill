

import UIKit

class OTP_Verification_to_Number: UIViewController {
    
    
    @IBOutlet weak var OTPNumberButtonOutlet: UIButton!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        OTPNumberButtonOutlet.layer.cornerRadius = 20
        let bottomline = CALayer()
        
         bottomline.frame = CGRect(x: 0, y: phoneNumberTextField.frame.height - 2, width: phoneNumberTextField.frame.width, height: 2)
        
         bottomline.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        phoneNumberTextField.borderStyle = .none
        phoneNumberTextField.layer.addSublayer(bottomline)
    }
    
    @IBAction func getOTPNumberButton(_ sender: Any) {
        
    
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "OTPverify") as! OTP_Code_Getting
        
        vc.number = phoneNumberTextField.text

        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    

}
