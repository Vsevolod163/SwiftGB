// 1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые
// хотят заказать чай (можно представить её в виде массива видов чая,
// которые хотят заказать). Необходимо последовательно выводить в консоль
// сколько заплатит покупатель (необходимо вывести его номер по порядку,
// чай, который он заказал и стоимость).


enum Tea: String {
    case green
    case black
    case red
    case white
}

let teaTypes: [Tea: Int] = [
    .green: 20,
    .black: 30,
    .red: 50,
    .white: 10
]

let queue: [Tea] = [
    .green,
    .white,
    .red,
    .red,
    .black,
    .green
]

for (index, tea) in queue.enumerated() {
    print(index, tea, teaTypes[tea] ?? Tea.self)
}
