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

print()

// 2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil].
// Необходимо создать новый массив, который будет состоять из элементов старого,
// но не должно быть nil, не должно быть 0 и 4, а также массив должен быть
// отсортирован по возрастанию.

let numbers = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]

var newNumbers = numbers.compactMap { $0 }
newNumbers.filter { ![0, 4].contains($0) }
newNumbers.sort()

print(newNumbers, "\n")

// 3. Написать функцию, которая на вход принимает целое число, а возвращает массив,
// который сформирован по следующим правилам: количество элементов соответствует
// переданному числу, массив начинается с 1, каждый последующий элемент больше
// предыдущего в 2 раза.

func getNumbers(with number: Int) -> [Int] {
    var numbers = Array(repeating: 1, count: number)
    
    for index in numbers.indices where index != 0 {
        numbers[index] = numbers[index - 1] * 2
    }
    
    return numbers
}

print(getNumbers(with: 5))
