function test_stack_limit(...)
  local args = {...}
  if #args > 0 then
    print("Arguments left to process:", #args)

    -- Inject error when more than 10 arguments are passed
    if #args > 10 then
      error("Too many arguments!")
    end

    test_stack_limit(unpack(args))
  else
    print("Stack limit reached!")
  end
end