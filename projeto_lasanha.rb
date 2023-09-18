# Receita para Lasanha

#### LEMBRESSE SEMPRE, INTERPOLAÇÃO EXIGE ASPAS DUPLAS "   "


class Lasanha
    EXPECTED_MINUTES_IN_OVEN = 40
    
    def preparation_time_in_minutes(camadas)
        camadas * 2
    end

    def remaining_minutes_in_oven(min_no_forno)
        EXPECTED_MINUTES_IN_OVEN - min_no_forno
    end

    def total_time_in_minutes(camadas, min_no_forno)
        (camadas*2) + min_no_forno
    end
    
end

# Testes sobre a classe
lasanha = Lasanha.new
lasanha.preparation_time_in_minutes(4)
lasanha.remaining_minutes_in_oven(10)  
puts lasanha.total_time_in_minutes(4, 24)

