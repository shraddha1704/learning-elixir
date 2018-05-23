IO.puts "Guard Functions"
defmodule Chop do
  def guess(actual, first..last) when trunc((first+last)/2) > actual do
    IO.puts "Is it #{trunc((first+last)/2)}"
    guess(actual, first..trunc((first+last)/2)-1)
  end

  def guess(actual, first..last) when trunc((first+last)/2) < actual do
    IO.puts "Is it #{trunc((first+last)/2)}"
    guess(actual, trunc((first+last)/2)+1..last)
  end

  def guess(actual, first..last) do
    IO.puts "Is it #{actual}"
    actual
  end
end

