def exclude_arr(arr, value)
    output = []
    i = 0
    while i < arr.length
        if arr[i] != value
            output << arr[i]
        end
        i += 1
    end
    return output
end

p exclude_arr([2,3,7,2,2,4], 2)