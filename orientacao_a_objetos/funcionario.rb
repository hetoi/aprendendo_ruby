class Funcionario
    attr_reader :ferias, :data_inicio_ferias, :data_fim_ferias
    attr_accessor :nome, :cdg_funcionario

    def initialize(nome, cdg_funcionario)
        @nome = nome
        @cdg_funcionario = cdg_funcionario
        @ferias = false
    end

    def imprime()
        puts "Funcionnário #{@nome} - Código: #{@cdg_funcionario} - Férias: #{@ferias}"
    end
 
    def inicia_ferias()
        @data_inicio_ferias = Time.now
        @ferias = true
    end

    def encerra_ferias()
        @data_fim_ferias = Time.now
        @ferias = false
    end

end
