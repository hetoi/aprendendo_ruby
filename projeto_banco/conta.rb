require_relative 'cliente'

#colocar uma classe dentro de outra classe. 
# relação superclasse-subclasse

class Conta
    attr_reader :nome, :titular
    attr_accessor :saldo

    def initialize(nome, titular, saldo)
        @proprietario = nome
        @titular = titular
        @saldo = saldo
    end

    def imprimir_saldo
        puts "O saldo de #{@proprietario} é R$#{@saldo}"
    end

    # Usar o @ ou self. para que ruby não crie outro atributo 

    def sacar(valor)
        if saldo >= valor
            @saldo -= valor
        else
            puts "Operação inválida"
        end
    end

    def depositar(valor)
        self.saldo += valor
    end

    def transferir(conta_destino, valor)
        if saldo >= valor
            sacar(valor)
            conta_destino.depositar(valor)
        else
            puts "Operação inválida"
        end
    end
end