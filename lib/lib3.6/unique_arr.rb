def unique_arr(arr)
    return "Empty list" if arr.length == 0
    return "The value in array was #{arr[0]}" if arr.length == 1
    output = []
    i = 0
    while i < arr.length
        if i == 0
            output << arr[i]
        else
            z = 0
            match = false
            while z < output.length
                if arr[i] == output[z]
                    match = true
                    break
                end
                z += 1
            end
            if match == false
                output << arr[i]
            end
        end
        i += 1
    end
    return output
end

p unique_arr([1,2,2,3,4,5,6,7,7])
p unique_arr([])
p unique_arr([1])