
def merge_sort(array)
  
  if array.length < 2
    return array
  else
    array_a,array_b = array.each_slice((array.size/2.0).round).to_a
    sorted_a = merge_sort(array_a)
    sorted_b = merge_sort(array_b)
    i = 0
    a = 0
    b = 0
    while i < array.length
      if !sorted_a[a] && !sorted_b[b]
        return array
      elsif sorted_a[a] && !sorted_b[b]
        array[i] = sorted_a[a]
        i += 1
        a += 1
      elsif !sorted_a[a] && sorted_b[b]
        array[i] = sorted_b[b]
        i += 1
        b += 1
      elsif sorted_a[a] < sorted_b[b]
        array[i] = sorted_a[a]
        a += 1
        i += 1
      else
        array[i] = sorted_b[b]
        b += 1
        i += 1
      end
    end
    return array
  end
end

sample = [2, 5, 6, 8, 3, 10, 9, 4, 11, 22, 45, 1]
p sample
p merge_sort(sample)
