-- Runs in about a second

function is_palindrome(number)
  str = number .. ''
  for ii = 1, (#str / 2) do
    if string.byte(str,ii) ~= string.byte(str, -ii) then
      return false
    end
  end
  return true
end

LOW = 100
HIGH = 999

highest = 0
for ii = LOW, HIGH do
  for jj = LOW, HIGH do
    num = ii * jj
    if is_palindrome(num) then
      highest = (num > highest) and num or highest
    end
  end
end
print(highest)

