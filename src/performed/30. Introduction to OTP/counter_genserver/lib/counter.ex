defmodule Counter do
  use GenServer

  def init(args), do: {:ok, args}

  def create() do
    GenServer.start_link(__MODULE__, 0)
  end

  def inc(server, x) do
    GenServer.cast(server, {:inc, x})
  end

  def dec(server, x)do
    GenServer.cast(server, {:dec, x})
  end

  def get(server) do
    GenServer.call(server, {:get})
  end

  def handle_cast({:inc, x}, counter) do
    {:noreply, counter + x}
  end
  def handle_cast({:dec, x}, counter) do
    {:noreply, counter - x }
  end
  def handle_call({:get}, _from, counter) do
    {:reply, counter, counter}
  end
end
