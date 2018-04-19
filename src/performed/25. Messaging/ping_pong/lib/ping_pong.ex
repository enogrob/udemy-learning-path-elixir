defmodule PingPong do
  @moduledoc false

  def loop(num_interactions, name) do
    IO.puts("#{num_interactions} - #{name}")
    receive do
      {:ball, from} -> pass_ball(from); loop(num_interactions + 1, name)
      {:stop} -> stop()
    end
  end

  def pass_ball(from) do
    :timer.sleep(2000)
    send(from, {:ball, self()})
  end

  def stop() do
    :ok
  end
end
