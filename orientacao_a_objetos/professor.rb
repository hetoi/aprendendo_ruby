class Professor < Funcionario
    attr_accessor :disciplina

    def initialize(nome, cdg_funcionario, disciplina)
        super(nome, cdg_funcionario)
        @disciplina = disciplina
    end

    def imprime
        puts puts "Professor #{@nome} - Código: #{@cdg_funcionario} - Disciplína: #{@disciplina} - Férias: #{@ferias}"
    end
        
end
