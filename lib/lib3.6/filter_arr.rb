def filter_arr(arr, value)
    output = []
    i = 0
    while i < arr.length
        if arr[i] == value
            output << arr[i]
        end
        i += 1
    end
    return output
end

p filter_arr([2,3,5,1,2,3,1,], 3)