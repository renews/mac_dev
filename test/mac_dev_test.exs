defmodule MacDevTest do
  use ExUnit.Case
  doctest MacDev

  test "greets the world" do
    assert MacDev.hello() == :world
  end
end
