local function churnMemory()
	local tempTable = {}
	setmetatable(tempTable, {__mode = 'kv'})
	for i in ipairs({1, 2, 3, 4, 5}) do
		local obj = {id = i}
		tempTable[obj] = true
		obj = nil
		tempTable = nil
		collectgarbage()
	end
end