def selection_sort(arr)
  for i in 0...arr.length
    minidx = i

    for j in (i + 1)...arr.length
      minidx = j if arr[minidx] > arr[j]
    end

    arr[minidx], arr[i] = arr[i], arr[minidx]
  end
  arr
end

p selection_sort([64, 25, 12, 22, 11])
