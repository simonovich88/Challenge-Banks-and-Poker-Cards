class Usuario

    attr_accessor :nombre, :cuentas,:total

    def initialize(nombre, cuentas)

        @nombre=nombre
        @cuentas=cuentas
      
    end

    def saldo_total

        total=0

        @cuentas.each  do |cuenta|

        total+= cuenta.saldo

        
        end

      total

    end



end


class CuentaBancaria


    attr_accessor :banco , :numero_de_cuenta, :saldo

    def initialize(banco,numero_de_cuenta,saldo=0)

        @banco=banco
        @numero_de_cuenta=numero_de_cuenta
        @saldo=saldo
    end


    def tranferir(cuenta_bancaria,monto)


        @saldo= @saldo-monto
       
        cuenta_bancaria.saldo = cuenta_bancaria.saldo + monto


    end

end

c1= CuentaBancaria.new('banco1',1,5000)
c2= CuentaBancaria.new('banco2',2,5000)
c3= CuentaBancaria.new('banco3',1,6000)

c1.tranferir(c2,5000)

p1= Usuario.new('usuario1',[c1,c3,c2])

puts p1.saldo_total