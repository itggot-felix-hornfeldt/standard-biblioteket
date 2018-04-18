def average_func(arr)
    return "You need array" if arr.length === 0
    i = 0
    sum = 0
    while i < arr.length
        sum += arr[i]
        i += 1
    end
    sum = (sum / i)
    return sum.to_f
end

p average_func([1,2,3,4,5])