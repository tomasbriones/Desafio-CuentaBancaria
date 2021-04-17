class Carta
    attr_reader :numero, :pinta
    #inicializo el metodo constructor con las variables que tengo que definir.
    def initialize(numero, pinta)

        #pinta.upcase!
        #pinta.to_s!
        pintas = ['C','D','E','T']

        #evaluamos si esta entre el rango correcto, evaluamos que la pinta sea la correcta
        if (numero >= 1 && numero <= 13) && pintas.include?(pinta)
            @numero = numero
            @pinta = pinta
        else
            raise ArgumentError.new("#{pinta} No es un argumento válido") #levanta una exepcion del tipo ArgumentError
        end
    end
    #'f', pinta que no existe, entra igual al initialize
    #require_relative 'desafio1_cuentabancaria/cartas'
end


#-----------EJECUCION DE CODIGO----------

#1. Creun un arreglo vacio de cartas, para agregarle las futuras instancias de la clase Carta
mazo = []
#2. Creo un array de pintas para poder elegir al azar
pintas = ['C','D','E','T'] #se pueden editar las pintas para que alerte el ArgumentError

#3. Agrega al arreglo mazo, las instancias de la clase carta creadas
5.times do |x|
    numero = rand(1..13)
    pinta = pintas.sample(1).join #sample devuelve siempre un arreglo. Al usar to_s, cambiaria el tipo del elemento del arreglo, pero no cambia a un string. Con join logro eso
    mazo.push(Carta.new(numero,pinta)) #agrego las nuevas instancias al arreglo mazo 
end

#4. Mostrar todas las cartas que se crearon en el arreglo
mazo.each {|x| print "#{x.numero}#{x.pinta} "}
