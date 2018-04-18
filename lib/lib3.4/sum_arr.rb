def sum_arr(arr)
    return "You need array" if arr.length === 0
    i = 0
    sum = 0
    while i < arr.length
        sum += arr[i]
        i += 1
    end
    return sum
end

p sum_arr([1,2,3,4])