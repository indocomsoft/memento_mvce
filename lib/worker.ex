defmodule Worker do
  use Que.Worker, concurrency: 20

  def perform(_) do
    Que.add(WorkerTwo, nil)
  end
end

defmodule WorkerTwo do
  use Que.Worker, concurrency: 5

  def perform(_) do
  end
end
