class CuentaBancaria

    attr_accessor :nombre_de_usuario

    def initialize(nombre_usuario,numero_cuenta)
        @nombre_de_usuario = nombre_usuario
        @numero_de_cuenta = numero_cuenta
    end
end

cuenta1 = CuentaBancaria.new("tomas","cualquier cosa")

puts "#{cuenta1.nombre_de_usuario}"