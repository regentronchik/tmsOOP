

import UIKit

class FourthViewController: UIViewController {
    
        override func viewDidLoad() {
                super.viewDidLoad()
                title = "FourthViewController"
                
                let button = UIButton(frame: CGRect(x: 50, y: 200, width: 200, height: 50))
                button.setTitle("Menu", for: .normal)
                button.addTarget(self, action: #selector(showOptions), for: .touchUpInside)
                button.backgroundColor = .blue
                self.view.addSubview(button)
            }
            
            @objc func showOptions() {
                let optionsView = UIView(frame: CGRect(x: 50, y: 300, width: 200, height: 150))
                optionsView.backgroundColor = .lightGray
                
                let option1Button = UIButton(frame: CGRect(x: 10, y: 10, width: 180, height: 30))
                option1Button.setTitle("Option 1", for: .normal)
                option1Button.backgroundColor = .green
                optionsView.addSubview(option1Button)
                
                let option2Button = UIButton(frame: CGRect(x: 10, y: 50, width: 180, height: 30))
                option2Button.setTitle("Option 2", for: .normal)
                option2Button.backgroundColor = .green
                optionsView.addSubview(option2Button)
                
                let option3Button = UIButton(frame: CGRect(x: 10, y: 90, width: 180, height: 30))
                option3Button.setTitle("Option 3", for: .normal)
                option3Button.backgroundColor = .green
                optionsView.addSubview(option3Button)
                
                let option4Button = UIButton(frame: CGRect(x: 10, y: 130, width: 180, height: 30))
                option4Button.setTitle("Option 4", for: .normal)
                option4Button.backgroundColor = .green
                optionsView.addSubview(option4Button)
                
                let label = UILabel(frame: CGRect(x: 10, y: 170, width: 180, height: 30))
                label.text = "Choose an option"
                label.textAlignment = .center
                optionsView.addSubview(label)
                
                self.view.addSubview(optionsView)
                
                //option3Button.addTarget(self, action: #selector(showOption1ViewController), for: .touchUpInside)

            }
    
    
    @IBAction func show5(_ sender: Any) {
        let fifthViewController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(withIdentifier:"FifthViewController")
        navigationController?.pushViewController(fifthViewController, animated: true)
    }
    
//    @objc func showOption3ViewController() {
//        let option3ViewController = UIStoryboard (name: "Main", bundle: nil).instantiateViewController(withIdentifier:"ThirdViewController")
//        self.navigationController?.pushViewController(option3ViewController, animated: true)
//    }

}
