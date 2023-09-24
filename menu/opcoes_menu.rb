require_relative '../helpers/helpers.rb'

def create_task
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


def list_tasks
    puts
    $tasks.each do |task|
        get_task_string(task)
    end
end


def mark_as_done
    number = get_task_number()

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


def remove_task
    number = number = get_task_number()    

    if number > $tasks.last[:number]
        puts "\n\tNão existe tarefa com o número informado"
    else
        $tasks.delete_if { |task| task[:number] == number }
        puts "\n\tTarefa número #{number} removida com sucesso."
    end
end


def save
    tasks_to_file_string = prepare_string_for_file

    date = Time.now.strftime("%d-%m-%Y_%H:%M:%S")
    output_file_name = "./data/tarefas_#{date}.txt"

    File.open(output_file_name, "w") do |f|
        f.write tasks_to_file_string
    end

    puts "\n\tArquivo salvo como #{output_file_name}"
end