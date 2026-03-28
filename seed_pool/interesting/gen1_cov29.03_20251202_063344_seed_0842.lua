function manipulate_string(input)
    local output = ""
    for i = 1, #input do
        if input:sub(i, i) == "a" then
            output = output .. string.rep("b", 2000)
        else
            output = output .. input:sub(i, i)
        end
    end
    return string.gsub(output, "b", "")
end
function require_mutation()
  -- Simulate a module
  package.loaded["mymodule"] = {
    foo = function()
      print("Hello from mymodule")
    end
  }

  -- Override the module search path
  local old_path = package.path
  package.path = "/my/custom/path/?.lua"

  require "mymodule"
  package.loaded["mymodule"].foo()

  -- Reset the original module search path
  package.path = old_path

  -- Test loading conflicts and cache
  require("mymodule")
  require("myothermodule")
  require("mymodule")

  -- Remove a module from the cache
  package.loaded["mymodule"] = nil

  -- Test if the module is reloaded on the next require
  require("mymodule")
end