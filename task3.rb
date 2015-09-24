#Задача 3

#Рассмотрим спираль, в которой, начиная с 1 в центре, последовательно расставим числа по часовой стрелке, 
#пока не получится спираль 5 на 5 

#21 22 23 24 25
#20  7  8  9 10
#19  6  1  2 11
#18  5  4  3 12
#17 16 15 14 13
#Можно проверить, что сумма всех чисел на диагоналях равна 101. 

#Чему будет равна сумма чисел на диагоналях, для спирали размером 1143 на 1143?

# it is not hard to notice that upper-right corner of the matrix contains
# squares of odd numbers.
# Let a number in upper-right will be n^2.
# So in upper-left we have n^2 - (n - 1)
# Bottom-left: n^2 - 2(n - 1)
# Bottom-right: n^2 - 3(n - 1)
# Sum of numbers on corners: 4n^2 - 6(n - 1)

def calc_corners_sum(n)
  4 * n**2 - 6 * (n - 1)
end

corners_sum_series = Enumerator.new do |y|
  i = 1
  y << i
  loop do
    i += 2
    y << calc_corners_sum(i)
  end
end

p corners_sum_series.take(1143).inject(:+)
