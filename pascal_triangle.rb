def pascal(depth)
  pascal =[[1]]
  until pascal.length == depth
    new_arr = []
    pascal[-1].each_with_index do |x, i|
        if i == 0
            new_arr << x
        end
        if i == pascal[-1].length - 1
            k_add = 0
        else
            num = i + 1
            k_add = pascal[-1][num]
        end
        k = x + k_add
        new_arr << k
    end
    pascal << new_arr
  end
  p pascal
end

pascal(1)
