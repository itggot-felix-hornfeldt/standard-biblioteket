def contains_arr(arr, value)
    output = false
    i = 0
    while i < arr.length
        if arr[i] == value
            output = true
            break
        end
        i += 1
    end
    return output
end

p contains_arr([2,3,7,2,2,4], 2)