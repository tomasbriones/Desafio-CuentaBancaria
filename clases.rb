class Animal
    attr_accessor :nombre

    def initialize(nombre)
        @animal = nombre  #variable de instancia con @ quee s variable de instancia 
    end
    def nombre #get_Nombre() 
        @animal #retorna la variable (ejecuta ultima linea) implicito el retorno
    end
    def set_nombre=(nombre) #sintactic suga, refactorizar, llamo al metodo como objeto.nombre
        @nombre = nombre
    end
end

#require_relative 'clases'
#pepito = Animal.new('pepito')
#cachupin = Animal.new('cachupin')