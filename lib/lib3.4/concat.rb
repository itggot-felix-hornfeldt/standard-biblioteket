def concat_func(arr1, arr2)
    return "You need array" if arr1.length === 0 || arr2.length === 0
    return arr1 + arr2
end

p concat_func([1,1,1], [2,2,2])