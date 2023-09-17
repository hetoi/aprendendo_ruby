# Estudo de OO no material da campus code
# criando uma classe 

class Aluno
    def initialize (nome, telefone, matricula)
        @nome = nome
        @telefone = telefone
        @matricula = matricula
    end     

    # Getter 
    def telefone
        return @telefone
    end

    #Setter 
    def telefone=(valor)
        @telefone = valor
    end
end

