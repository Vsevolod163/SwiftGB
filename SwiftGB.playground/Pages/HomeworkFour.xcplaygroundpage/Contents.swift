
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

final class Pizzeria {
    private var pizzas: [Pizza]
    
    var allPizzas: [Pizza] {
        get {
            pizzas
        }
    }
    
    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }
    
    func addPizza(pizza: Pizza) {
        pizzas.append(pizza)
    }
}

struct Pizza {
    let cost: Int
    let type: PizzaType
    let dough: Dough
    let additives: [Additive]
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
 
let pizzeria = Pizzeria(
    pizzas: [
        Pizza(
            cost: 500,
            type: .pepperoni,
            dough: .thin,
            additives: [.cheese, .tomato]
        ),
        Pizza(
            cost: 700,
            type: .hawaiian,
            dough: .thin,
            additives: [.pepperoni, .cheese]
        )
    ]
)

pizzeria.addPizza(
    pizza: Pizza(
        cost: 400,
        type: .margarita,
        dough: .fat,
        additives: [.tomato]
    )
)

pizzeria.addPizza(
    pizza: Pizza(
        cost: 800,
        type: .fourCheese,
        dough: .fat,
        additives: [.tomato, .pepperoni]
    )
)

pizzeria.allPizzas.forEach { pizza in
    print(pizza.type.rawValue, pizza.cost, pizza.dough, pizza.additives)
}
