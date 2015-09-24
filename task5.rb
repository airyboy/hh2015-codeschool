#Задача 5
#Число 125874 и результат умножения его на 2 — 251748 можно получить друг из друга перестановкой цифр. 
#Найдите наименьшее положительное натуральное x такое, что числа 3*x, 5*x можно получить друг из друга перестановкой цифр.

require_relative 'number_composer'

seq = Enumerator.new do |y| 
  i = 1; 
  y << i; 
  loop do
    i += 1 
    y << i
  end
end

seq.each do |n|
  x3 = decompose 3 * n
  x5 = decompose 5 * n

  if x3.sort == x5.sort
    p [n, x3, x5]
    break
  end
end
