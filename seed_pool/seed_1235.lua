function recursive_varargs(...)
if #arg > 0 then
return recursive_varargs(...)
end
return "Stack limit reached"
end
print(recursive_varargs(1, 2, 3))