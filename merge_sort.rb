def merge_sort(arr)
  return arr if arr.length <= 1

  if arr.length > 1
    middle = (arr.length / 2)
    left_arr = arr[...middle]
    right_arr = arr[middle...]
  end

  # recursion
  merge_sort(left_arr)
  merge_sort(right_arr)

  # merge
  i = 0 #left arr idx
  j = 0 #right arr idx
  k = 0 #merged array idx

  while i < left_arr.length && j < right_arr.length
    if left_arr[i] < right_arr[j]
      arr[k] = left_arr[i]
      i += 1
    else
      arr[k] = right_arr[j]
      j += 1
    end
    k += 1
  end

  while i < left_arr.length
    arr[k] = left_arr[i]
    i += 1
    k += 1
  end

  while j < right_arr.length
    arr[k] = right_arr[j]
    j += 1
    k += 1
  end
end

arr_test = [2, 4, 5, 21, 24, 12, 29]
merge_sort(arr_test)
print arr_test
