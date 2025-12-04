def is_palindrome(x)
    reverse_num = 0
    temp = x
    while temp > 0
        reverse_num = reverse_num * 10 + temp % 10
        temp /= 10
    end
    if reverse_num == x
        return true
    else
        return false
    end
end     


