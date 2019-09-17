defmodule Example1 do
  @hello :hello
  def hello, do: say_hello
  defp say_hello do
    @hello
  end
end
