print('local t = {')
for i = 1, tonumber((select(1, ...))) do
	print('\ttest' .. i .. ' = true;')
end
print('}')
print('return function(str, doThing)')
print('\tif t[str] then')
print('\t\tdoThing()')
print('\tend')
print('end')
