require_relative 'carta'

class Barajas

    attr_accessor :cartas

    def initialize(cartas)
      
        array = []
        cartas.times do
        pinta1 = ['C','D','E','T'].sample
        numero1 = Random.rand(1..13)

        Carta.new(numero1, pinta1)
        array.push Carta.new(numero1, pinta1)
        end

        cartas = array
    
        @cartas = cartas

    
    end

    def barajar

        @cartas.shuffle!

    end 

    def sacar

        @cartas.shift

    end 

    def repartir

        array1 = []
        x=0
            @cartas.each do |cartas|
                x+=1
                if(x<=5)
                array1.push(cartas)
                end

            end
     
        array1

    end 

end


b1= Barajas.new(52)

puts b1.barajar.inspect

puts b1.sacar.inspect

puts b1.repartir.inspect