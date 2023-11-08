import UIKit

class FifthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if var navigationStack = navigationController?.viewControllers {
            if navigationStack.count >= 4 {
                var temp = navigationStack[0]
                navigationStack[0] = navigationStack[1]
                navigationStack[1] = temp
                temp = navigationStack[2]
                navigationStack[2] = navigationStack[3]
                navigationStack[3] = temp
                
                navigationController?.setViewControllers(navigationStack, animated: true)
            }
        }
    }

    
    
}


