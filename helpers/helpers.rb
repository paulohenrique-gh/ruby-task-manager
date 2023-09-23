def extract_from_file(file_name)
    tasks_from_file = open(file_name)

    tasks = []

    File.readlines(file_name, chomp: true).each do |line|
        split_task = line.split(' - ')
        number = split_task[0].to_i
        description = split_task[1]
        status = split_task[2]
        task = { number: number, description: description, status: status }
        tasks << task
    end

    tasks_from_file.close

    return tasks
end

def get_task_string(task)
    puts """
        Número: #{task[:number]}
        Descrição: #{task[:description]}
        Status: #{task[:status]}"""
end