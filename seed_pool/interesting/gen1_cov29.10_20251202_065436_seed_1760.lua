local chunk = "t = {}\nfor i=1,1000 do\nt[i] = \"value\" .. i\nt[\"key\" .. i] = \"value\" .. i\nend"
load(chunk)()