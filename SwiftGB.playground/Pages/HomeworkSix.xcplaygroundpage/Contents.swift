// 1. Создать структуру работника пиццерии. В ней должны быть такие свойства,
// как имя, зарплата и должность. Должностей пока может быть две: или кассир,
// или повар. Добавить в класс пиццерии массив с работниками.

// 2. Создать класс столика, в нём должно быть свойство, в котором содержится
// количество мест и функция, которая на вход принимает количество гостей,
// которое хотят посадить, а возвращает true, если места хватает и false,
// если места не хватает. Изначальное количество мест задаётся в инициализаторе.

// 3. Добавить в класс пиццерии свойство, в котором хранится массив столиков.
// У класса столика добавить свойство, в котором хранится кафе, в котором стоит
// столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.

protocol MenuProtocol {}

protocol StatusProtocol {
    func open()
    func closed()
}

final class Pizzeria {
    private var pizzas: [Pizza]
    private var product: MenuProtocol
    private var menu: [MenuProtocol]
    private var workers: [Worker]
    
    var allPizzas: [Pizza] {
        get {
            pizzas
        }
    }
    
    var pizzeriaProduct: MenuProtocol {
        get {
            product
        } set {
            product = newValue
        }
    }
    
    init(pizzas: [Pizza], product: MenuProtocol, menu: [MenuProtocol], workers: [Worker]) {
        self.pizzas = pizzas
        self.product = product
        self.menu = menu
        self.workers = workers
    }
    
    func addProductToMenu(product: MenuProtocol) {
        menu.append(product)
    }
    
    func addPizza(pizza: Pizza) {
        pizzas.append(pizza)
    }
}

struct Pizza: MenuProtocol {
    let cost: Int
    let type: PizzaType
    let dough: Dough
    let additives: [Additive]
}

struct FrenchFries: MenuProtocol {
    let cost: Int
    let size: String
}

struct Worker {
    let name: String
    let salary: Int
    let position: Position
}

enum PizzaType: String {
    case pepperoni = "Pepperoni"
    case margarita = "Margarita"
    case mushroom = "Mushroom"
    case hawaiian = "Hawaiian"
    case fourCheese = "Four Cheese"
}

enum Dough {
    case fat
    case thin
}

enum Additive {
    case pepperoni
    case tomato
    case cheese
}

enum Position {
    case cashier
    case cook
}

extension Pizzeria: StatusProtocol {
    func open() {
        print("Open")
    }
    
    func closed() {
        print("Closed")
    }
}
