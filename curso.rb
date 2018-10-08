class Curso

  attr_reader :nome, :modulos

    def initialize(nome)
        @nome = nome
        @modulos = []
    end
    
    def add_modulo modulo
        @modulos << modulo
    end

end