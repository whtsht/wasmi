local function factorize(num)
    local divisor, result = 2, ""
    while divisor * divisor <= num do
        while num % divisor == 0 do
            result = result .. divisor .. " "
            num = num // divisor
        end
        divisor = divisor + 1
    end

    if num > 1 then
        result = result .. num
    end
    return result
end

local nums = {
  123456789012302,
  987654321011105,
  1122334455667709,
  1122334455667109,
  9988776655443388
}
local start_time = os.clock()
for _, n in ipairs(nums) do
    local r = factorize(n)
    print(r)
end

local elapsed = os.clock() - start_time
print("Elapsed time: " .. elapsed .. " seconds")
