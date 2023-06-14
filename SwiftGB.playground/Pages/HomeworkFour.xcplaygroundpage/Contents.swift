
// 1. Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).

enum PizzaType {
    case pepperoni
    case margarita
    case mushroom
    case hawaiian
    case fourCheese
}

// 2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое
// или тонкое тесто и добавки (например, дополнительно добавить пепперони,
// помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы.
// Подсказка: добавки лучше также сделать перечислением.

struct Pizza {
    let cost: Int
    let type: PizzaType
    let dough: Dough
    let additives: [Additive]
    
    enum Dough {
        case fat
        case thin
    }
    
    enum Additive {
        case pepperoni
        case tomato
        case cheese
    }
    
}

// 3. Создать класс пиццерии, добавить массив с возможными видами пиццы.
// Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.

final class Pizzeria {
    private let pizzaTypes: [PizzaType]
    
    init(pizzaTypes: [PizzaType]) {
        self.pizzaTypes = pizzaTypes
    }
}

// 4. Написать в классе пиццерии функции для добавления нового вида пиццы и для
// получения всех доступных пицц.

// 5. Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
 
