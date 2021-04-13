class Carta
    attr_reader :numero, :pinta
    #inicializo el metodo constructor con las variables que tengo que definir.
    def initialize(numero, pinta)

        pinta.upcase!
        pinta.to_s!
        pinta = ['C','D','E','T']

        #evaluamos si esta entre el rango correcto, evaluamos que la pinta sea la correcta
        if (numero >= 1 && numero <= 13) && pinta.include?(pinta)
            @numero = numero
            @pinta = pinta
        else
            raise ArgumentError.new('No es un argumento válido') #levanta una exepcion del tipo ArgumentError
        end
    end
    #'f', pinta que no existe, entra igual al initialize
    #require_relative 'desafio1_cuentabancaria/cartas'
end