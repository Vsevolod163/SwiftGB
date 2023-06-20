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
    private let product: MenuProtocol
    private let workers: [Worker]
    private let tables: [Table]
    private var pizzas: [Pizza]
    private var menu: [MenuProtocol]
    
    var allPizzas: [Pizza] {
        get {
            pizzas
        }
    }
    
    var allTables: [Table] {
        get {
            tables
        }
    }
    
    init(pizzas: [Pizza], product: MenuProtocol, menu: [MenuProtocol], workers: [Worker], tables: [Table] = [Table(places: 4, cafe: .dodo), Table(places: 5, cafe: .dominos)]) {
        self.pizzas = pizzas
        self.product = product
        self.menu = menu
        self.workers = workers
        self.tables = tables
    }
    
    func addProductToMenu(product: MenuProtocol) {
        menu.append(product)
    }
    
    func addPizza(pizza: Pizza) {
        pizzas.append(pizza)
    }
}

final class Table {
    private let places: Int
    private let cafe: Cafe
    
    init(places: Int, cafe: Cafe) {
        self.places = places
        self.cafe = cafe
    }
    
    func isSuit(_ guests: Int) -> Bool {
        guests > places ? false : true
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

enum Cafe {
    case papaJones
    case dodo
    case iskra
    case dominos
}

extension Pizzeria: StatusProtocol {
    func open() {
        print("Open")
    }
    
    func closed() {
        print("Closed")
    }
}

let pizzeria = Pizzeria(
    pizzas: [
        Pizza(
            cost: 500,
            type: .mushroom,
            dough: .thin,
            additives: [.cheese]
        )
    ],
    product: FrenchFries(cost: 100, size: "Big"),
    menu: [
        Pizza(
            cost: 700,
            type: .pepperoni,
            dough: .thin,
            additives: [.tomato]
        ),
        Pizza(
            cost: 400,
            type: .margarita,
            dough: .fat,
            additives: [.cheese]
        )
    ],
    workers: [
        Worker(
            name: "Sara",
            salary: 30000,
            position: .cashier
        ),
        Worker(
            name: "John",
            salary: 35000,
            position: .cook
        )
    ]
)

pizzeria.allTables.forEach { table in
    print(table.isSuit(5))
}
