# subclasse de conta
# acrescentar atributo limite
# copiar atributos e modificar método 'sacar' colocando
# limite como parametro
require_relative "conta.rb"

class Conta_corrente

    attr_accessor :limite

    def initialize(nome, titular, saldo, limite)
        super(nome, titular, saldo)
        @limite = limite
    end

    def sacar(valor)
        if (saldo + limite) >= valor
            @saldo -= valor
        else
            puts "Operação inválida"
        end
    end

end