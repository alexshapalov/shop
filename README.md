Магазин по продаже машин

- Создаем корзину 

cart = Cart.new

- Создаем товары 

car1 = Car.new("Tesla S",  120_000,  { type: "sport"} )
car2 = Car.new("Porhse",   190_000,  { type: "pass"} )

- Добавляем товары в корзину

cart.add_items([car1, car2, car3, car4]) 

- Сохраняем в базе данных (текстовом файле)

cart.save_to_file # save in DB

2. Класс товара. Car

У которого есть атрибуты. 

name, price, options

class Car
end


3. Класс корзины. Cart

- Получает при инициализации товары (машины)
- Сохраняет их в файл
- Имеет включенные модули с методами  (ClassMethods, InstanceMethods )

4. Модули 

ClassMethods, InstanceMethods ввключенные в основной модуль

с методами add_items - добавить товар 

