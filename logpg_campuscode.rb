alunos = ['André', 'Sofia', 'Laura']
notas = [5, 6, 8]

puts "#{alunos[0]} tirou a nota #{notas[0]}"
puts "#{alunos[1]} tirou a nota #{notas[1]}"
puts "#{alunos[2]} tirou a nota #{notas[2]}"

notas[1] = 9
alunos << 'Paulo'
notas << 7.5

puts '
Notas atualizadas: 

'
puts "#{alunos[0]} tirou a nota #{notas[0]}"
puts "#{alunos[1]} tirou a nota #{notas[1]}"
puts "#{alunos[2]} tirou a nota #{notas[2]}"
puts "#{alunos[3]} tirou a nota #{notas[3]}"

puts "Essa turma tem #{alunos.length()} alunos"

meu_hash = { 
    'nome' => 'Heitor',
    'idade' => 22,
    'signo' => 'escorpiao'
}
    
meu_hash_com_simbols = { 
    :nome => 'Heitor',
    :idade => 22,
    :signo => 'Escorpião'
}


puts meu_hash['nome']
puts meu_hash_com_simbols[:nome]

#Exercício usando Hash, Arrays e Symbols  

heitor = { 
    nome: 'Heitor', 
    nota: 7, 
    disciplina: 'Artes'}
paulo = { 
    nome: 'Paulo', 
    nota: 9, 
    disciplina: 'Artes'}
maria = { 
    nome: 'Maria', 
    nota: 8, 
    disciplina: 'Literatura'}
alunos = [heitor, paulo, maria]
puts "#{heitor[:nome]} tirou a nota #{heitor[:nota]} na disciplina #{heitor[:disciplina]}"

# ou se eu quiser usar a lista dos dicionários como referência, posso usar o aluno[0][:nome]:
puts "#{alunos[0][:nome]} tirou a nota #{alunos[0][:nota]} na disciplina #{alunos[0][:disciplina]}"

#
# Estruturas condicionais
#

if 8.odd?()
    puts 'Esse número é impar'
else
    puts 'Esse número é par'
end

numero = 1
outro_numero = 20

if numero == outro_numero
    puts "Os números #{numero} e #{outro_numero} foram testados"
    puts 'Os números são iguais'
else
    puts "Os números #{numero} e #{outro_numero} foram testados"
    puts 'Os números são diferentes'
end

# Exercício condicional mais exercício anterior 

heitor = { 
    nome: 'Heitor', 
    nota: 7, 
    disciplina: 'Artes'}
paulo = { 
    nome: 'Paulo', 
    nota: 9, 
    disciplina: 'Artes'}
maria = { 
    nome: 'Maria', 
    nota: 8, 
    disciplina: 'Literatura'}
alunos = [heitor, paulo, maria]

if alunos[0][:nota] >= 5
    puts "#{alunos[0][:nome]} foi aprovado na matéria #{alunos[0][:disciplina]}"
else
    puts "#{alunos[0][:nome]} foi reprovado na matéria #{alunos[0][:disciplina]}"
end


# Switch e case
# Coloca mais condições  

nota = -1
case nota
when 0
  puts 'Você tirou zero! Precisa melhorar…'
when 1..4
  puts 'Reprovado… precisa se esforçar mais...'
when 5
  puts 'Passou raspando!'
when 6..9
  puts 'Parabéns, você foi aprovado.'
when 10
  puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
end 

time = :Botafogo

case time
when :Vitoria
    puts 'Você torce para o Vitória'
when :Flamengo
    puts 'Eca!'
when :Botafogo
    puts 'Tiquinho Soares é foda!'
end
# outra alternativa ELSIF

### While
condicao = 4
while condicao == 4 do
    puts 'A condição está sendo satisfeita!'
    condicao = 2
end

tecla_pressionada = 's'
while tecla_pressionada != 'n'
    puts 'Só vou para quando a tecla selecionada for n'
    tecla_pressionada = gets().chomp()
end

tecla_pressionada = 's'
alunos = []
notas = []
disciplinas = [] 

while tecla_pressionada == 's' do
  puts 'Digite o nome do aluno: '
  nome_aluno = gets.chomp
  alunos << nome_aluno
  
  puts 'Digite a nota do aluno: '
  nota_aluno = gets.to_f()
  notas << nota_aluno
  
  puts 'Digite a disciplina que o aluno cursa: '
  disciplina_aluno = gets.chomp
  disciplinas << disciplina_aluno

  puts 'Deseja inserir um novo aluno? s ou n'
  tecla_pressionada = gets.chomp
end


heitor = { 
    nome: 'Heitor', 
    nota: 7, 
    disciplina: 'Artes'}
paulo = { 
    nome: 'Paulo', 
    nota: 9, 
    disciplina: 'Artes'}
maria = { 
    nome: 'Maria', 
    nota: 8, 
    disciplina: 'Literatura'}
alunos = [heitor, paulo, maria]

alunos.each do |aluno|
    puts "O aluno #{aluno[:nome]} tirou a nota #{aluno[:nota]} na matéria #{aluno[:disciplina]}"
end

# Integrando Arrays, Hash, Symbols, for e def
# criar hash's com symbols de cada alunos
alberto = { nome: 'Alberto', nota: 7, disciplina: 'Artes' }
joana = { nome: 'Joana', nota: 8, disciplina: 'Bio' }
karen = { nome: 'Karen', nota: 9, disciplina: 'Filosofia' }
# criar arrays para cada hash
alunos = [alberto, joana, karen]
# criar funçao capaz de imprimir uma frase com a repectiva symbols
def imprime_alunos(nome, nota, disciplina)
  puts "#{nome} tirou nota #{nota} em #{disciplina}"
end

#loop capaz de passar por cada hash
alunos.each do |aluno|
  imprime_alunos(aluno[:nome], aluno[:nota], aluno[:disciplina])
end
    