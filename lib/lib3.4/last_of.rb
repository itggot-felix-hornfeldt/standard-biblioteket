def last_of_func(arr)
    return "You need array" if arr.length === 0
    return arr[arr.length - 1]
end

p last_of_func([1,2,3,4])