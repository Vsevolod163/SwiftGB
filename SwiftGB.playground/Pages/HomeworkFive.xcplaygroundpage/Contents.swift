// 1. В рамках прошлого домашнего задания был создан класс пиццерии с переменной,
// в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри,
// в которой будет стоимость и размер картошки и сделать так, чтобы в классе
// пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.

protocol MenuProtocol {
    
}

final class Pizzeria {
    private var pizzas: [Pizza]
    private var product: MenuProtocol
    
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
    
    init(pizzas: [Pizza], product: MenuProtocol) {
        self.pizzas = pizzas
        self.product = product
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

// 2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.



// 3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.



// 4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.



// 5. Написать функцию, в которой происходит вычитание одного числа из другого.
// Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.


func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    a - b
}

print(subtract(5, 2.5))
