#Задача 4

#Последовательность Фиббоначи определена реккурентным соотношением 
#Fn = Fn-1 + Fn-2, 
#где F1 = 1 и F2 = 1 

#Первые 12 членов последовательности будут такими: 
#F1=1, 
#F2=1, 
#F3=2, 
#F4=3, 
#F5=5, 
#F6=8, 
#F7=13, 
#F8=21, 
#F9=34, 
#F10=55, 
#F11=89, 
#F12=144 
#Можно увидеть, что 12-ый член последовательности - первый, состоящий из трех цифр. 

#Найдите номер первого члена последовательности Фиббоначи, такого, что число цифр в нём равно 1323.

require 'bigdecimal'

fib = Enumerator.new do |y|
  i = BigDecimal.new("1")
  y << i
  j = BigDecimal.new("1")
  y << j
  loop do
    i, j = j, i + j
    y << j
  end
end

fib.take(10).each_with_index do |v, i|
  p "%d - %d - %d" % [i + 1, v, v.exponent]
end

fib.each_with_index do |n, i|
  if n.exponent >= 1323
    p [i, n, n.exponent]  
    break
  end
end
