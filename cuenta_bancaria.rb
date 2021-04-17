#-----Creo la clase-----
class CuentaBancaria
#1. Se crean los getters y setters segun corresponde
    attr_accessor :nombre_de_usuario, :vip
    attr_reader :numero_de_cuenta
#2. validamos que la cuenta sea un integer y que luego tenga 8 caracteres, ni mas ni menos. Y vip queda por default en o si no se entrega ese parametro
    def initialize(nombre_usuario,numero_cuenta,vip=0)
        if numero_cuenta.is_a?(Integer)
            if (numero_cuenta.digits).count == 8 #digits retorna un array, por ende podemos aplicar count
                @nombre_de_usuario = nombre_usuario.to_s #nos aseguramos que cualquier parametro que se ingrese, se convierta en string
                @numero_de_cuenta = numero_cuenta
                @vip = vip
            else
                raise RangeError.new("Numero de cuenta fuera de Rango") #levanta un range error, porque no cumple con que sea de 8 digitos
            end
        else
            raise ArgumentError.new("'#{numero_cuenta}' no es un argumento válido")
        end
    end
#3. Método  para identificar la cuenta, si es vip o no. Como el attr es solo reader. Prefiero convertir a string para agregar el guion.
    def numeroCuenta() #no usamos numero_de_cuenta ya que genera un stack error
        if self.vip !=1
            return "0-#{self.numero_de_cuenta}"
        else
            return "1-#{self.numero_de_cuenta}"
        end
    end
end

#-----EJECUCION CODIGO-----(CON DOS FORMAS DE INGRESAR PARAMETROS)---*parametro vip es opcional
#FORMA 1 - 4. Se crea la instancia cuenta1
#cuenta1 = CuentaBancaria.new(ARGV[0],ARGV[1].to_i,ARGV[2].to_i)

#FORMA 2 - 4. Se crea la instancia cuenta1
cuenta1 = CuentaBancaria.new("tomas",23456789) #si la cuenta comienza con ceros, va a contar los digitos descontando los ceros

#Visualizacion del usuario y cuenta
puts "Usuario: #{cuenta1.nombre_de_usuario}\nCuenta: #{cuenta1.numeroCuenta}"