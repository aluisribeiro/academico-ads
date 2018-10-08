class Professor
    
    attr_reader :nome, :disciplinas
    def initialize nome
        @nome = nome
        @disciplinas = []
    end
    
    def add_disciplina disciplina
        @disciplinas << disciplina
    end
    
end