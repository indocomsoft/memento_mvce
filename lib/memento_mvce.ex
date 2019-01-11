defmodule MementoMvce do
  def mvce do
    Enum.each(1..100, fn _ -> Que.add(Worker, nil) end)
  end
end
