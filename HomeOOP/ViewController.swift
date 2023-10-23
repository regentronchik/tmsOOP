import UIKit


class Menu {
    var snaks: Product
    var mainMenu: Product
    var beverages: Product
    var desserts: Product
    init(snaks: Product, mainMenu: Product, beverages: Product, desserts: Product) {
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

class Carbonara: Product{
    override init() {
        super .init()
        name = "Carbonara"
        price = 2
    }
}

func productPrint(item: Product) {
        print("Название: \(item.name), Стоимость: \(item.price) руб")
}

class ViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            let test = Coffee()
            productPrint(item: test)
        }
    }
