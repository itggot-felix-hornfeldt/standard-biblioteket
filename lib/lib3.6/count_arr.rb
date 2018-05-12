def count_arr(arr, value)
    output = 0
    i = 0
    while i < arr.length
        if arr[i] == value
            output += 1
        end
        i += 1
    end
    return output
end

p count_arr([2,3,7,2,2,4], 2)