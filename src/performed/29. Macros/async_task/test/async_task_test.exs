defmodule AsyncTaskTest do
  use ExUnit.Case
  doctest AsyncTask

  test "greets the world" do
    assert AsyncTask.hello() == :world
  end
end
