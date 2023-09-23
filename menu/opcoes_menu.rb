require_relative '../helpers/helpers.rb'

def create_task()
    puts
    puts "Informe a descrição da tarefa"
    print "> "
    task_description = gets.chomp

    task  = {
        number: ($tasks.last[:number] + 1),
        description: task_description,
        status: 'Pendente'
    }
    $tasks << task

    puts "\n\tTarefa #{task_description} adicionada com sucesso"
    get_task_string(task)

end


def list_tasks()
    puts
    $tasks.each do |task|
        puts "\t #{task}"
    end
end


def mark_as_done()
    puts "\nInforme o número da tarefa"
    print "> "
    number = gets.chomp.to_i

    if number > $tasks.last[:number]
        puts "\n\tNão existe tarefa com o número informado"
    else
        task_to_complete = $tasks.find { |task| task[:number] == number }
        if task_to_complete[:status] == "Concluído"
            puts "\n\tTarefa já com status Concluído"
        else
            task_to_complete[:status] = "Concluído"
            puts "\n\tStatus da tarefa #{task_to_complete[:description]} alterado para Concluído"
            get_task_string(task_to_complete)
        end        
    end

end


def remove_task(number)

end


def save()

end