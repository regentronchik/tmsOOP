
import UIKit

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let forwardButton = UIBarButtonItem(title: "Forward", style: .plain, target: self, action: #selector(forwardButtonTapped))
        navigationItem.rightBarButtonItem = forwardButton
    }
    
    @objc func forwardButtonTapped() {
        let fourthViewController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(withIdentifier:"FourthViewController")
        navigationController?.pushViewController(fourthViewController, animated: true)
    }
    
    
}
