-- This ran in about 3.5 minutes

-- NUMBER_TO_FACTOR = 13195
NUMBER_TO_FACTOR = 600851475143

limit = math.sqrt(NUMBER_TO_FACTOR)

primes = { 3 }

function divisible_by_any(val, array)
  -- print("Checking " .. val .. "")
  for ii, num in ipairs(array) do
    -- print("   " .. num .. " " .. (val % num) .. '')
    if (val % num) == 0 then
      return true
    end
  end
  return false
end

for ii = 5, limit, 2 do
  -- print("Checking " .. ii .. " vs " .. #primes .. " primes")
  if not divisible_by_any(ii, primes) then
    table.insert(primes, ii)
    if NUMBER_TO_FACTOR % ii == 0 then
      factor = ii
      -- print (" ********** Factor found: " .. factor)
    end
  end
end
print(factor)


