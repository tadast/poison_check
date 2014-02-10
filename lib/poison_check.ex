defmodule PoisonCheck do
  @services [Service.GitHub]

  def main do
    Enum.each @services, fn(service) ->
      # service.start
      # service.get().body
      IO.puts "YAY #{service}"
    end
  end
end
