def insertion_sort(ls)
  for i in 1...ls.length
    key = ls[i]

    j = i - 1
    while j >= 0 and key < ls[j]
      ls[j + 1] = ls[j]
      j -= 1
      ls[j + 1] = key
    end
  end
  print ls
end

insertion_sort([2, 3, 1, 52, 6, 4, 75])
