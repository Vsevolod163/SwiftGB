// 1. В рамках прошлого домашнего задания был создан класс пиццерии с переменной,
// в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри,
// в которой будет стоимость и размер картошки и сделать так, чтобы в классе
// пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.



// 2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.



// 3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.



// 4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.



// 5. Написать функцию, в которой происходит вычитание одного числа из другого.
// Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.


func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    a - b
}

print(subtract(5, 2.5))
