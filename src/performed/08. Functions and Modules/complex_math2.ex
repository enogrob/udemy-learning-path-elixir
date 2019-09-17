defmodule ComplexMath2 do
  import BasicMath, only: [square: 1]
  def cube(x) do
    square(x) * x
  end
end
