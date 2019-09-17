defmodule Chaining do
  def person do
    %{first_name: "joe", last_name: "Smith"}
  end
  def full_name(person) do
    "#{person.first_name} #{person.last_name}"
  end
  def say_hello(name, from) do
    "#{from} says: Hello #{name}"
  end
end
