def roman_to_int(x)
    values = {
        'I' => 1,
        'v' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }

    sum = 0
    value_prev = 0
    x.each_char do |char|
        value = values[char]
        if value.nil?
            raise ArgumentError, "Invalid Roman numeral character: #{char}"
        end
        
        if value > value_prev
            sum += value - 2 * value_prev
        else
            sum += value
        end
        value_prev = value
    end
    sum
end    


 