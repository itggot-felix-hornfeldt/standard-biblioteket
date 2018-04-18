def prepend_func(arr, num)
    return "You need array" if arr.length === 0
    return [num] + arr
end

p prepend_func([1,2,3], 4)