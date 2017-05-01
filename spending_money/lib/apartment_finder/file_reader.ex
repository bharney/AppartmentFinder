defmodule SpendingMoney.FileReader do
    def get_apartments(path) do
        File.read!(path)
        |> String.split("\n")
        |> Enum.map(&String.trim/1)
        |> Enum.filter(&String.length(&1) <= 50)
        |> Enum.random()
    end
end