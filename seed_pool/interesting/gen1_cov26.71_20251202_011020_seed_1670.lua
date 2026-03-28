function check_stack_limit(...)
  if select("#", ...) > 0 then
    do
      print("Stack limit reached!")
    end
  else
    check_stack_limit(...)
  end
end
check_stack_limit(1, 2, 3, 4, 5)