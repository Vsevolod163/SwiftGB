
// 1. Написать функцию, которая на вход принимает число: сумма, которую
// пользователь хочет положить на вклад, следующий аргумент — это годовой
// процент, третий аргумент — это срок функция возвращает сколько денег получит
// пользователь по итогу.

func getTotalAmount(sum: Double, percent: Double, time: Int) -> Double {
    sum + (sum * percent / 100) * Double(time)
}

print(getTotalAmount(sum: 120, percent: 10, time: 2))

// 2. Создать перечисление, которое содержит 3 вида пиццы, и создать переменные
// с каждым видом пиццы.

enum Pizza: String {
    case pepperoni = "Pepperoni"
    case margarita = "Margarita"
    case mushroom = "Mushroom"
}

let pepperoni = Pizza.pepperoni
let margarita = Pizza.margarita
let mushroom = Pizza.mushroom

// 3. Добавить возможность получения названия пиццы через rawValue.

print(pepperoni.rawValue, margarita.rawValue, mushroom.rawValue)
