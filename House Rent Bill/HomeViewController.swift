
import UIKit

class HomeViewController: UIViewController {
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
  
    
    
    @IBAction func logoutButton(_ sender: Any) {
        
        defaults.set(false, forKey: "islogin")
        
        
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "login")
        
        navigationController?.pushViewController(vc, animated: true)
    }
    

}
