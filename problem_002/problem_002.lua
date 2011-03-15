LIMIT = 4000000

a, b, sum = 1, 2, 0
while b <= LIMIT do
  if b % 2 == 0 then
    sum = sum + b
  end
  a, b = b, a + b
end

print(sum)

