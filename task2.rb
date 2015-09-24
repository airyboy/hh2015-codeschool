#Задача 2

#Если мы возьмем 47, перевернем его и сложим, получится число 121 — палиндром. 

#Если взять 349 и проделать над ним эту операцию три раза, то тоже получится палиндром: 
#349 + 943 = 1292
#1292 + 2921 = 4213
#4213 + 3124 = 7337

#Найдите количество положительных натуральных чисел меньших 12925 таких, что из них нельзя 
#получить палиндром за 50 или менее применений описанной операции.

require_relative 'number_composer'

def palindrome?(num)
  arr = decompose(num)
  arr == arr.reverse
end

def reverse_and_add(num)
  arr = decompose num
  reversed = arr.reverse
  compose(arr) + compose(reversed)
end

def calc(n)
  num = n
  51.times do |i|
    if palindrome? num
      #p "%d is palindrome at step %d: %d" % [n, i, num]
      return true
    end
    num = reverse_and_add num
  end
  #p "%d is not palindrome" % n
  false
end

arr = []
12925.times do |i|
  unless calc(i)
    arr << i
  end
end

p arr
p arr.size
