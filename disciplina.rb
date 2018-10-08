class Disciplina
 
    attr_reader :nome, :modulos, :professores
    
    def initialize (nome)
        @nome = nome
        @modulos = []
        @professores = []
    end
    
    def add_modulo modulo
        @modulos << modulo
    end
    
    def add_professor professor
        @professores << professor
    end
end