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
