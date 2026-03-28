local t = {}
   for i = 1, 1000 do
     local key_identifier_edgecase = (i % 2 == 0) and "key" .. i or i
     t[key_identifier_edgecase] = i
   end