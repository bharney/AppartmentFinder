defmodule ApartmentFinder.Scheduler do
    def schedule_file(schedule, file) do
        Quantum.add_job(schedule, fn -> 
            IO.puts ApartmentFinder.FileReader.get_apartments(file) end)
    end
end