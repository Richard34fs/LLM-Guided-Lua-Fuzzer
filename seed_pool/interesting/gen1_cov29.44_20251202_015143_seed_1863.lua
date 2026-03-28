code = "a = '0'\nt  = {}\nfor i=1,10 do\na  = a + 1\nt[a]  = 0\nend\nprint(#t)\n"
chunk = load(code)
if chunk then
    chunk()
else
    error("Failed to compile code")
end