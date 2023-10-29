import UIKit


class Menu {
    var snaks: [Product]
    var mainMenu: [Product]
    var beverages: [Product]
    var desserts: [Product]
    init(snaks: [Product], mainMenu: [Product], beverages: [Product], desserts: [Product]) {
        self.snaks = snaks
        self.mainMenu = mainMenu
        self.beverages = beverages
        self.desserts = desserts
    }
}

class Product{
        var name: String = ""
        var price: Int = 0
}

class Coffee: Product{
    override init() {
        super .init()
        name = "Latte"
        price = 1
    }
}
class Pizza: Product{
    override init() {
        super .init()
        name = "Pizza"
        price = 3
    }
}
class Beer: Product{
    override init() {
        super .init()
        name = "Beer"
        price = 5
    }
}
class Meat: Product{
    override init() {
        super .init()
        name = "Meat"
        price = 10
    }
}

class Carbonara: Product{
    override init() {
        super .init()
        name = "Carbonara"
        price = 2
    }
}

class Restaurant {
    static let shared = Restaurant()
    var isStarted: Bool = false
    private(set) var sum: Int = 0
    private init() {}
    
    func sumCount(item: Product){
        print("Сейчас заказали: \(item.name), Стоимость: \(item.price) руб")
        sum += item.price
    }
    func startJob(){
        sum = 0
        isStarted = true
    }
    func stopJob(){
        isStarted = false
        print("Выручка за смену: \(sum) руб.")
    }
    func warnPrint(){
        print("Начните смену!")
    }
}



//func productPrint(item: Product) {
//        print("Название: \(item.name), Стоимость: \(item.price) руб")
//}

class ViewController: UIViewController {
    
    
    @IBAction func start(_ sender: UIButton) {
        let button = Restaurant.shared
        button.startJob()
    }
    
    
    @IBAction func stop(_ sender: UIButton) {
        let button = Restaurant.shared
        button.stopJob()
    }
    
    
    @IBAction func Latte(_ sender: UIButton) {
        let button = Restaurant.shared
        if button.isStarted == true{
            button.sumCount(item: Coffee())
        }else {
            button.warnPrint()
        }
    }
    
    
    @IBAction func Meat(_ sender: UIButton) {
        let button = Restaurant.shared
        if button.isStarted == true{
            button.sumCount(item: HomeOOP.Meat())
        }else {
            button.warnPrint()
        }
    }
    
    
    @IBAction func Beer(_ sender: UIButton) {
        let button = Restaurant.shared
        if button.isStarted == true{
            button.sumCount(item: HomeOOP.Beer())
        }else {
            button.warnPrint()
        }
    }
    
    
    
    @IBAction func Pizza(_ sender: UIButton) {
        let button = Restaurant.shared
        if button.isStarted == true{
            button.sumCount(item: HomeOOP.Pizza())
        }else {
            button.warnPrint()
        }
    }
    
    
    @IBAction func Carbonara(_ sender: Any) {
        let button = Restaurant.shared
        if button.isStarted == true{
            button.sumCount(item: HomeOOP.Carbonara())
        }else {
            button.warnPrint()
        }
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            let test = Coffee()
//            productPrint(item: test)
        }
    }
