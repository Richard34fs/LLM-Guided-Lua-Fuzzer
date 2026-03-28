local chunk = "local t = {}\nt[1] = 'one'\nt['one'] = 1\nfor i = 1, #t do\nif type(t[i]) == 'number' then\nt[i] = t[i] + 1\nelse\nt[i] = t[i] .. 'more'\nend\nend\nprint(t[1], t['one'])"
local f = load(chunk)
f()