-- Runs in about 5 seconds
LIMIT = 10001

function array_pp(t)
  for ii, val in ipairs(t) do  print(ii .. ': ' .. val) end
end

function primes(count)
  found_primes = { 2 }

  local function divisible_by_known_primes(num)
    for _, v in ipairs(found_primes) do
      if num % v == 0 then
        return true
      end
    end
    return false
  end

  local function next_prime(found_primes, _)
    -- array_pp(found_primes)
    val = found_primes[#found_primes]
    repeat
      val = (val == 2) and 3 or val + 2
    until(not divisible_by_known_primes(val))
    table.insert(found_primes, val)

    if #found_primes > count then
      return nil
    else
      return val
    end
  end

  return next_prime, found_primes, 3
end



for ii in primes(LIMIT) do
  -- print("Prime: " .. ii .. '')
  highest = ii
end
print(highest)
