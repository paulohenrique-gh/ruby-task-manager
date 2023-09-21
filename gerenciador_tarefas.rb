require_relative 'opcoes_menu.rb'
require_relative 'helpers.rb'

puts "GERENCIADOR DE TAREFAS"
puts "______________________\n\n"

puts "Informe o caminho do arquivo com a extensão. Ex.: tarefas.txt"
print "> "
file_name = gets.chomp

$tasks = []

if File.exist?(file_name)
    $tasks = extract_from_file(file_name)
end

$new_tasks = []

puts

loop do
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
        create_task()
    when "2"
        list_tasks()
    when "6"
        exit(0)
    end
end
