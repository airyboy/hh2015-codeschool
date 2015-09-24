#Задача 1

#Дано равенство, в котором цифры заменены на буквы: 
#rqtr + wxq = rxqr 

#Найдите сколько у него решений, если различным буквам соответствуют различные цифры.

require_relative 'number_composer'

def arr_to_hash(arr)
  hash = {r: arr[0], q: arr[1], t: arr[2], w: arr[3], x: arr[4]}
  hash.each_pair {|k, v| hash[k] = 0 if v.nil?}
  hash
end

@digits = Enumerator.new(100000) do |y|
  100000.times do |n|
    hash = arr_to_hash(decompose(n))
    if hash.values.size == hash.values.uniq.size
     y << arr_to_hash(decompose(n))
    end
  end
end

def do_work
  @digits.each do |n|
    #rqtr
    a1 = compose n.values_at :r, :q, :t, :r
    #wxq
    a2 = compose n.values_at :w, :x, :q
    #rxqr
    a3 = compose n.values_at :r, :x, :q, :r

    print "\r%s %4d + %3d = %4d" % [n.values, a1, a2, a3]
    if a1 + a2 == a3
      p [a1, a2, a3]
    end
  end
end

do_work
