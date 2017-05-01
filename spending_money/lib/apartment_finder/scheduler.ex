defmodule SpendingMoney.Scheduler do
    def schedule_file(schedule, file) do
        Quantum.add_job(schedule, fn -> 
            IO.puts SpendingMoney.FileReader.get_apartments(file) end)
    end
end