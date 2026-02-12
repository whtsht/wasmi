function fibonacci(n)
    local a, b = 0, 1
    local c = a + b

    while n > 0 do
        a = b
        b = c
        c = a + b
        n = n - 1
    end

    return a
end

print(fibonacci(1000))
