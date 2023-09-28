require_relative 'menu/opcoes_menu.rb'
require_relative 'helpers/helpers.rb'

puts "GERENCIADOR DE TAREFAS"
puts "______________________\n\n"

puts "(Opcional) Informe o caminho do arquivo com a extensão. Ex.: tarefas.txt"
print "> "
file_name = gets.chomp

$tasks = []

$tasks = extract_from_file(file_name) if File.exist?(file_name)

$new_tasks = []

loop do
    puts
    puts "Digite uma das opções:"
    puts "1. Criar nova tarefa"
    puts "2. Listar todas as tarefas"
    puts "3. Marcar tarefa como concluída"
    puts "4. Remover tarefa da lista"
    puts "5. Salvar"
    puts "6. Sair"
    print "> "
    option = gets.chomp

    case option
    when "1"
        create_task
    when "2"
        list_tasks
    when "3"
        mark_as_done
    when "4"
        remove_task
    when "5"
        save
    when "6"
        exit(0)
    end
end
