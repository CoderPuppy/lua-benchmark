local f = load(function()
	return io.read('L')
end)()

local n = tonumber((select(1, ...)))
local function doThing()
	local t = {}
	table.insert(t, 1)
	table.remove(t, 1)
end

print('no match')
local before_clock = os.clock()
local before_time = os.time()

for i = 1, n do
	f('notthereatall' .. i, doThing)
end

local after_clock = os.clock()
local after_time = os.time()

print('clock', after_clock - before_clock)
print('time', os.difftime(after_time, before_time))

print('i-th')
local before_clock = os.clock()
local before_time = os.time()

for i = 1, n do
	f('test' .. i, doThing)
end

local after_clock = os.clock()
local after_time = os.time()

print('clock', after_clock - before_clock)
print('time', os.difftime(after_time, before_time))

print('1st')
local before_clock = os.clock()
local before_time = os.time()

for i = 1, n do
	f('test' .. (i + 1 + i), doThing)
end

local after_clock = os.clock()
local after_time = os.time()

print('clock', after_clock - before_clock)
print('time', os.difftime(after_time, before_time))
