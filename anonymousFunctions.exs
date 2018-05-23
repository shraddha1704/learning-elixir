IO.puts "list_concat"
list_concat = fn x, y -> x ++ y end
IO.inspect list_concat.([:a,:b],[:c,:d])

a = 9
IO.puts "sum"
sum = fn a, b, c -> a + b + c end
IO.inspect sum.(1,2,3)
IO.puts "Value of a = #{a}"

IO.puts "pair_tuple_to_list"
pair_tuple_to_list = fn {a, b} -> [a, b] end
ans = pair_tuple_to_list.({1234, 5678})
IO.inspect ans, structs: false

IO.puts "One Function, Multiple bodies"
handle_open = fn
{:ok, file} -> "Read data: #{IO.read(file, :line)} #{IO.read(file, :line)} #{IO.read(file, :line)}"
{_, err} -> "Error: #{:file.format_error(err)}"
end
f1 = handle_open.(File.open("pm1.exs"))
f2 = handle_open.(File.open("pm3.exs"))
IO.puts "f1 = #{f1}"
IO.puts "f2 = #{f2}"

IO.puts "\nFizzBuzz example"
fb = fn
0,0,_ -> "FizzBuzz"
0,_,_ -> "Fizz"
_,0,_ -> "Buzz"
_,_,x -> "#{x}"
end

IO.puts "1. #{fb.(0,1,2)}"
IO.puts "2. #{fb.(0,0,1)}"
IO.puts "3. #{fb.(3,0,"c")}"
IO.puts "4. #{fb.(1,2,3)}"


IO.puts "\nRemainder example"
remainder = fn n -> fb.(rem(n,3), rem(n,5), n) end
IO.puts "1. #{remainder.(10)}"
IO.puts "2. #{remainder.(11)}"
IO.puts "3. #{remainder.(12)}"
IO.puts "4. #{remainder.(13)}"
IO.puts "5. #{remainder.(14)}"
IO.puts "6. #{remainder.(15)}"
IO.puts "7. #{remainder.(16)}"

IO.puts "\nParametrized functions"
prefix = fn str1 -> (fn str2 -> "#{str1} #{str2}" end) end
s1 = prefix.("Shraddha")
s2 = s1.("Sharma")
IO.puts "#{s2}"

IO.puts "\nUsing & operator"
Enum.map [1,2,3,4], &(&1 + 2)
Enum.each [1,2,3,4], &(IO.inspect(&1))


