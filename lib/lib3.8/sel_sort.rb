def sel_sort(arr)
    duplic = arr.dup
    output = []
    start = true
    while start
        if duplic.length == 1
            output << duplic[0]
            start = false
        else
            i = 1
            pivot = duplic[0]
            pos = 0
            while i < duplic.length    
                if pivot > duplic[i]
                    pivot = duplic[i]
                    pos = i
                end 
                i += 1
            end
            output << pivot
            duplic.delete_at(pos)
        end
    end
    return output
end

list = [1,7,4,9,3,6,34,2,67,352,4,6,345,2346,352,4,7,5235,7452123,4242342423423,8453,83,64,2,53423,9]

p sel_sort(list)