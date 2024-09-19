def bubble_sort(array)
  loop do
    swaps = 0
    for i in 1...array.length do
      if array[i-1] > array[i]
        swaps += 1
        tmp = array[i]
        array[i] = array[i-1]
        array[i-1] = tmp
      end
    end
    if swaps == 0
      break
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])