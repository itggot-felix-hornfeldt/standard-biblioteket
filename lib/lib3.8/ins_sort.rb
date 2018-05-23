def ins_sort(arr)
    output = []
    i = 0
    while i < arr.length
        if i == 0
            output << arr[i]
        else
            pivot = arr[i]
            z = output.length - 1
            while z >= 0 
                if pivot > output[z]
                    output.insert((z+1), pivot)
                    break
                elsif z == 0
                    output.unshift(pivot)
                end
                z -= 1
            end
        end
        i += 1
    end
    return output
end

list = [1,7,4,9,3,6,34,2,67,352,4,6,345,2346,352,4,7,5235,7452123,4242342423423,8453,83,64,2,53423,9,0]

p ins_sort(list)