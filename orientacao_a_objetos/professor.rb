class Professor < Funcionario
    attr_accessor :disciplina

    def initialize(nome, cdg_funcionario, disciplina)
        super(nome, cdg_funcionario)
        @disciplina = disciplina
    end
end
