def append_func(arr, num)
    return "You need array" if arr.length == 0
    return arr << num
end

p append_func([1,2,3], 4)