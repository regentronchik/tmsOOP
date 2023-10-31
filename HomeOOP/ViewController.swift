import UIKit


class Menu {
    var snaks: [Product] = []
    var mainMenu: [Product] = []
    var beverages: [Product] = []
    var desserts: [Product] = []
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

let coffee = Coffee()
let pizza = Pizza()
let beer = Beer()
let meat = Meat()
let carbonara = Carbonara()

class Restaurant {
    static let shared = Restaurant()
    var isStarted: Bool = false
    private(set) var sum: Int = 0
    private init() {}

    let menu = Menu(snaks: [pizza], mainMenu: [meat,carbonara], beverages: [beer], desserts: [coffee])
    
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
    
    let restaurant = Restaurant.shared
    
    @IBAction func start(_ sender: UIButton) {
        restaurant.startJob()
    }
    
    @IBAction func stop(_ sender: UIButton) {
        restaurant.stopJob()
    }
    
    @IBAction func Latte(_ sender: UIButton) {
        if restaurant.isStarted {
            restaurant.sumCount(item: restaurant.menu.desserts[0])
        }else {
            restaurant.warnPrint()
        }
    }
    
    @IBAction func Meat(_ sender: UIButton) {
        if restaurant.isStarted {
            restaurant.sumCount(item: restaurant.menu.mainMenu[0])
        }else {
            restaurant.warnPrint()
        }
    }
    
    @IBAction func Beer(_ sender: UIButton) {
        if restaurant.isStarted {
            restaurant.sumCount(item: restaurant.menu.beverages[0])
        }else {
            restaurant.warnPrint()
        }
    }
    
    @IBAction func Pizza(_ sender: UIButton) {
        if restaurant.isStarted {
            restaurant.sumCount(item: restaurant.menu.snaks[0])
        }else {
            restaurant.warnPrint()
        }
    }
    
    @IBAction func Carbonara(_ sender: Any) {
        if restaurant.isStarted {
            restaurant.sumCount(item: restaurant.menu.mainMenu[1])
        }else {
            restaurant.warnPrint()
        }
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
//            productPrint(item: test)
        }
    }
