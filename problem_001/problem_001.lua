LIMIT = 1000

sum = 0
for ii = 1, (LIMIT-1) do
  if (ii%3 == 0) or (ii%5 == 0)  then
    sum = sum + ii
  end
end
print(sum)
