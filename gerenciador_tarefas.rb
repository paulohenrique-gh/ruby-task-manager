require_relative 'opcoes_menu.rb'
require_relative 'helpers.rb'

puts "GERENCIADOR DE TAREFAS"
puts "______________________\n\n"

puts "Informe o caminho do arquivo com a extensão. Ex.: tarefas.txt"
print "> "
file_name = gets.chomp

$tasks = extract_from_file(file_name)

puts

puts "Digite uma das opções:"
puts "1. Criar nova tarefa"
puts "2. Listar todas as tarefas"
puts "3. Marcar tarefa como concluída"
puts "4. Remover tarefa da lista"
puts "5. Salvar lista"
puts "6. Sair"
print "> "

# loop do
    
# end