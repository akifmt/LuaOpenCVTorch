----------------------------------------------------------------------
-- Lua Ornekler 1
----------------------------------------------------------------------
-- Kaynak Link: http://tylerneylon.com/a/learn-lua/
----------------------------------------------------------------------

print('Hello World') -cikti

num = 42  -- tum sayilar double

-- string ler
s = 'walternate'
t = "double-quotes are also fine"
u = [[ Double brackets
       start and end
       multi-line strings.]]

t = nil  -- bos degisken

-- while
while num < 50 do
  num = num + 1  -- ++ veya += YOK
end

-- If:
if num > 40 then
  print('over 40')
elseif s ~= 'walternate' then  -- ~= Esit degildir
  io.write('not over 40\n') 
else
  -- degiskenler global olur
  thisIsGlobal = 5

  -- local degisken tanimlama
  local line = io.read()

  -- string birlestirme .. ile yapilir
  print('Winter is coming, ' .. line)
end

aBoolValue = false

-- nil ve false deger olumsuz doner, 0 ve '' true olumlu doner
if not aBoolValue then print('twas false') end

-- 'or' ve 'and' kullanimi
ans = aBoolValue and 'yes' or 'no'  --> 'no'

-- For:
karlSum = 0
for i = 1, 100 do 
  karlSum = karlSum + i
end

-- eksiltme degeri bulunan for:
fredSum = 0
for j = 100, 1, -1 do fredSum = fredSum + j end

----------------------------------------------------
-- 2. Functions.
----------------------------------------------------

function fib(n)
  if n < 2 then return 1 end
  return fib(n - 2) + fib(n - 1)
end


function adder(x)
  return function (y) return x + y end
end

a1 = adder(9)
a2 = adder(36)
print(a1(16))  --> 25
print(a2(64))  --> 100

x, y, z = 1, 2, 3, 4
-- Now x = 1, y = 2, z = 3, ve 4 atilir

function bar(a, b, c)
  print(a, b, c)
  return 4, 8, 15, 16, 23, 42
end


-- Detaylar icin: http://tylerneylon.com/a/learn-lua/
