def is_empty_arr(arr)
    return true if arr.length === 0
    return false if arr.length > 0
end

p is_empty_arr([])