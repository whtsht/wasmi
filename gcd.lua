function gcd(a, b)
  local counter = 0
  while b ~= 0 do
    a, b = b, a % b
    counter = counter + 1
  end
  print("Number of iterations: " .. counter)
  return a
end

print(gcd(328872521371972, 1823748272388213))
