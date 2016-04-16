print('return function(str, doThing)')
io.write('\tif ')
for i = 1, tonumber((select(1, ...))) do
	if i ~= 1 then
		io.write(' or ')
	end
	io.write('str == \'test' .. i .. '\'')
end
print(' then')
print('\t\tdoThing()')
print('\tend')
print('end')
