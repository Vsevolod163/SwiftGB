
// 1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).


// 2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое
// или тонкое тесто и добавки (например, дополнительно добавить пепперони,
// помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы.
// Подсказка: добавки лучше также сделать перечислением.

// 3. Создать класс пиццерии, добавить массив с возможными видами пиццы.
// Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.

// 4. Написать в классе пиццерии функции для добавления нового вида пиццы и для
// получения всех доступных пицц.

// 5. Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.

struct Pizza {
    let cost: Int
    let type: PizzaType
    let dough: Dough
    let additives: [Additive]
    
    
}

final class Pizzeria {
    private var pizzaTypes: [PizzaType]
    
    var types: [PizzaType] {
        get {
            pizzaTypes
        }
    }
    
    init(pizzaTypes: [PizzaType]) {
        self.pizzaTypes = pizzaTypes
    }
    
    func addPizzaType(pizzaType: PizzaType) {
        pizzaTypes.append(pizzaType)
    }
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
 
let pizzeria = Pizzeria(pizzaTypes: [.margarita, .fourCheese])
pizzeria.addPizzaType(pizzaType: .mushroom)

pizzeria.types.forEach { type in
    print(type.rawValue)
}
