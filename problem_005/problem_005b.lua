-- brute force runs in 4 sec
function div_20(n)
  for ii = 2,20 do
    if (n % ii > 0) then
      return false
    end
  end
  return true
end

n = 20
repeat
  if div_20(n) then
    print(n)
    os.exit()
  else
    n = n + 20
  end
until false