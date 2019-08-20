defmodule Counter do
  def create() do
    spawn(__MODULE__, :loop, [0])
  end

  def inc(pid, x) do
    pid |> send({:inc, x})
  end

  def dec(pid, x)do
    pid |> send({:dec, x})
  end

  def get(pid) do
    pid |> send({:get, self()})
    receive do
      counter -> counter
    end
  end

  def loop(counter) do
    receive do
      {:inc, x} -> loop(counter + x)
      {:dec, x} -> loop(counter - x)
      {:get, caller} -> send(caller, counter)
                        loop(counter)
    end
  end
end
