
import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
            }
            
            override func viewWillDisappear(_ animated: Bool) {
                super.viewWillDisappear(animated)
                self.navigationController?.setNavigationBarHidden(false, animated: true)
            }


    @IBAction func show2(_ sender: Any) {
        let thirdViewController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(withIdentifier:"ThirdViewController")
        navigationController?.pushViewController(thirdViewController, animated: true)
        
    }
}
