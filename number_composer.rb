def decompose(num)
  arr = []
  fix = num
  until fix == 0
    fix, rem = fix.divmod 10
    arr << rem
  end
  arr
end

def compose(arr)
  num = 0
  arr.each_with_index do |val, i|
    num += val * 10**i
  end
  num
end
