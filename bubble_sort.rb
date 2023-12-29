def bubble_sort(arr)
  n = arr.length

  for i in (0...n)
    swapped = false

    for j in (0...n - i - 1)
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end

    break if swapped == false
  end

  arr
end

p bubble_sort([64, 34, 25, 12, 22, 11, 90])
