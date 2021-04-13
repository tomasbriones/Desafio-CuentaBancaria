class Carta

    #inicializo el metodo constructor con las variables que tengo que definir.
    def initialize(numero, pinta)

        pinta.upcase!
        pinta = ['C','D','E','T']

        #evaluamos si esta entre el rango correcto
        if numero >= 1 && numero <= 13
            @numero = numero
        end
        #evaluamos que la pinta sea la correcta
        if pinta.include?(pinta)
            @pinta = pinta
        end
    end
end