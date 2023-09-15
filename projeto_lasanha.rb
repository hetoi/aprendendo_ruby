# Receita para Lasanha

#### LEMBRESSE SEMPRE, INTERPOLAÇÃO EXIGE ASPAS DUPLAS "   "


class Lasanha
    MINUTOS_ESPERADOS_PARA_PREPARO = 40
    
    def prep_camadas(camadas)
        tempo_prep = camadas * 2
        "Você gastou #{tempo_prep} minutos para preparar a lasanha"
    end

    def minutos_faltantes(min_no_forno)
        faltante = (MINUTOS_ESPERADOS_PARA_PREPARO - min_no_forno)
        "Faltam apenas #{faltante} minutos para a lasanha estar pronta"
    end

    def total_gasto(camadas, min_no_forno)
        min_total_gasto = (camadas*2) + min_no_forno
        "Você está cosinhando essa lasanha faz #{min_total_gasto} minutos"
    end
    
end

lasanha = Lasanha.new
lasanha.prep_camadas(4)
lasanha.minutos_faltantes(10)  
lasanha.total_gasto(4, 24)
