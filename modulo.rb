class Modulo

    attr_reader :nome, :curso, :disciplinas

    def initialize(nome, curso)
        @nome = nome
        @curso = curso
        @disciplinas = []
    end
    
    def add_disciplina disciplina
        @disciplinas << disciplina
    end
end