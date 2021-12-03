
import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var phoneNumberTF: UITextField!
    
    @IBOutlet weak var dateOfBirthTF: UITextField!
    
    @IBOutlet weak var CompleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CompleteButton.layer.cornerRadius = 20
        
        let bottomline = CALayer()
        
         bottomline.frame = CGRect(x: 0, y: userNameTF.frame.height - 2, width: userNameTF.frame.width, height: 2)
        
         bottomline.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        userNameTF.borderStyle = .none
        userNameTF.layer.addSublayer(bottomline)
    
        let bottomline1 = CALayer()
         bottomline1.frame = CGRect(x: 0, y: nameTF.frame.height - 2, width: nameTF.frame.width, height: 2)
        
         bottomline1.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        nameTF.borderStyle = .none
        nameTF.layer.addSublayer(bottomline1)
        
        let bottomline2 = CALayer()
        
         bottomline2.frame = CGRect(x: 0, y: phoneNumberTF.frame.height - 2, width: phoneNumberTF.frame.width, height: 2)
        
         bottomline2.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        phoneNumberTF.borderStyle = .none
        phoneNumberTF.layer.addSublayer(bottomline2)
    
        let bottomline3 = CALayer()
         bottomline3.frame = CGRect(x: 0, y: dateOfBirthTF.frame.height - 2, width: dateOfBirthTF.frame.width, height: 2)
        
         bottomline3.backgroundColor = UIColor.init(red: 255/255, green: 5/255, blue: 5/255, alpha: 1).cgColor
        dateOfBirthTF.borderStyle = .none
        dateOfBirthTF.layer.addSublayer(bottomline3)
        
    }
    

   
}
