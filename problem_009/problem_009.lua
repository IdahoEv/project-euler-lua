-- runs in about 22 ms
for a = 2, 499 do
  for b = 2, 499 do
    c = (1000 - a) - b
    if a^2 + b^2 == c^2 then
      print(a*b*c)
      os.exit()
    end
  end
end
