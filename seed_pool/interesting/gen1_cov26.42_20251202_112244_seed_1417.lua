local t = {}  -- criação de um módulo local chamado 't'
t.__index = t
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function(a) return a end
setmetatable(t, t)  -- define o metamódulo de 't' para 't'
print(t + t(t))  -- realiza operação com '+'. O '+' vai executar '__add', que irá retornar 'a', ou seja, 't'