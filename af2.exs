handle_result = fn
{:ok, result} -> IO.puts "handling the result…"
{:error} -> IO.puts "an error is occurred"
end

handle_result.({:ok,1})
