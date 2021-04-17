class CuentaBancaria

    attr_accessor :nombre_de_usuario

    def initialize(nombre_usuario,numero_cuenta,vip=0)
        if numero_cuenta.is_a?(Integer)
            if (numero_cuenta.digits).count == 8
                @nombre_de_usuario = nombre_usuario.to_s
                @numero_de_cuenta = numero_cuenta
                @vip = vip
            else
                raise RangeError.new("Numero de cuenta fuera de Rango")
            end
        else
            raise ArgumentError.new("'#{numero_cuenta}' no es un argumento válido")
        end
    end
end

cuenta1 = CuentaBancaria.new("tomas",) #si la cuenta comienza con ceros, va a contar los digitos, descontando los ceros

puts "#{cuenta1.nombre_de_usuario}"