
// 1. Вывести в консоль все чётные числа от 0 до 100, включая 0.
 
for number in 0...100 where number.isMultiple(of: 2) {
    print(number)
}

// 2. Создать две переменных: одна равна 7, другая 20.
// Если результат перемножения этих переменных больше 10,
// то вывести в консоль первую переменную, в противном случае вывести вторую.

let numberOne = 7
let numberTwo = 20

numberOne * numberTwo > 10 ? print(numberOne) : print(numberTwo)

// 3. Создайте переменную “k”, равную 9. В диапазоне от 10 до 50, но только
// по нечётным числам, если текущее число плюс “k” — чётное, то увеличьте “k”
// на 2, в противном случае выведите в консоль “Next” и перейдите к следующей итерации.

var k = 9

for number in 10...50 where number % 2 != 0 {
    (number + k).isMultiple(of: 2) ? k += 2 : print("Next")
}

// 4. Создайте переменную “k”, равную 9. В диапазоне от 10 до 50, но только
// по нечётным числам, если текущее число плюс “k” — чётное, то увеличьте “k”
// на 1, в противном случае выведите в консоль “Next” прекратите выполнение цикла.

k = 9

for number in 10...50 where number % 2 != 0 {
    (number + k).isMultiple(of: 2) ? k += 1 : print("Next")
}
