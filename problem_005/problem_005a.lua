-- Runs in about a millisecond
LIMIT = 20

function array_pp(t)
  for ii, val in ipairs(t) do  print(ii .. ': ' .. val) end
end

function dict_pp(t)
  for ii, val in pairs(t) do  print(ii .. ' = ' .. val) end
end


-- Prime factorize each number into an table
function prime_factors(n)

  local function factor(_, val)
    if n > 1 then
      while n % val > 0 do
        val = val + ( val == 2 and 1 or 2)
        if val * val > n then val = n end
      end
      n = n / val
      return val
    end
  end
  return factor, nil, 2
end

-- return a table of the prime factors of (number), with
-- the factor as key and the count appearance as value.
-- for example, factorize(12) == { 2 = 2, 3 = 1 }
function factorize(number)
  factors = {}
  for p in prime_factors(number) do
    factors[p] = factors[p] and factors[p] + 1 or 1
  end
  return factors
end

-- Collapse two dictionaries of numbers, keeping all the keys for both
-- and (for each key) the largest value from either dictionary for that key.
function collapse(dict1, dict2)
  dict = {}
  for key, val in pairs(dict1) do
    dict[key] = math.max(val, dict2[key] or 0)
  end
  for key, val in pairs(dict2) do
    dict[key] = math.max(val, dict1[key] or 0)
  end
  return dict
end


factors = {}
for ii = 2, LIMIT do
  factors = collapse(factors, factorize(ii))
end
dict_pp(factors)
product = 1
for key, val in pairs(factors) do
  product = product * (key ^ val)
end

print(product)


-- dict_pp(factorize(12))
-- print('-------')
-- dict_pp(factorize(32))
-- print('-------')
-- dict_pp(collapse(factorize(12), factorize(32)))