puts "GERENCIADOR DE TAREFAS"
puts "______________________\n\n"

puts "Informe o caminho do arquivo com a extensão. Ex.: tarefas.txt"
print "> "
file_name = gets.chomp

tasks_from_file = open(file_name)

tasks = []

File.readlines(file_name, chomp: true).each do |line|
    split_task = line.split(' - ')
    number = split_task[0]
    description = split_task[1]
    status = split_task[2]
    task = { number: number, description: description, status: status }
    tasks << task
end

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