LIMIT = 100
sum, sum_squares = 0, 0

for ii = 1, LIMIT do
  sum, sum_squares = sum + ii, sum_squares + (ii * ii)
end

print(sum_squares)
print(sum*sum)
print((sum*sum) - sum_squares)