class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta) 
        
        if !(1..13).include?(numero)
            raise ArgumentError, 'Constructor el numero no esta entre 1 y 13'                 
        end 

        if !['C','D','E','T'].include?(pinta)
            raise ArgumentError, 'Constructor la pinta no es C, D, E ni T'
        end 
        
        @numero = numero
        @pinta = pinta       
    end
end
