def longest_common_prefix(strs)
    return "" if strs.empty?
    return strs[0] if strs.length == 1

    prefix = strs[0]
    strs.each do |strs|
        while strs.index(prefix) != 0
            prefix = prefix[0...-1]
            return "" if prefix.empty?
        end
    end
    prefix
end

