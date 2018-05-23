defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadraple(n), do: double(double(n))
end

defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n-1)
end

defmodule Sum do
  def of(0), do: 0
  def of(n), do: n + of(n-1)
end

defmodule Length do
  def of([]), do: 0
  def of(n), do: 1 + of(tl(n))
end

defmodule Gcd do
  def of(x,0), do: x
  def of(x,y), do: of(y, rem(x,y))
end
