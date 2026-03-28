function recursive_variadic_function(...)
	print(...)
	if select('#', ...) > 0 then
		recursive_variadic_function(select(2, ...))
	end
end
local metatable = {
	__tostring = function(self)
		return tostring(self.value)
	end
}
local complex_table = setmetatable({ value = 10 }, metatable)
recursive_variadic_function(complex_table, 2, 3, 4, 5)