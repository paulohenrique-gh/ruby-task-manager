def create_task()
    puts
    puts "Informe a descrição da tarefa"
    print "> "
    task_description = gets.chomp

    task  = { number: ($tasks.last[:number] + 1), description: task_description, status: 'Pendente' }
    $tasks << task

    puts "Tarefa #{task_description} adicionada com sucesso"
    puts
end


def list_tasks()
    puts
    $tasks.each do |task|
        puts "\t #{task}"
    end

    puts
end


def mark_as_done(number)
    if number > $tasks.last[:number]
        puts 'Não existe tarefa com o número informado'
    else
        
    end
end


def remove_task(number)

end


def save()

end