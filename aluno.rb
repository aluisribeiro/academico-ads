class Aluno

    attr_reader :nome

    def initialize nome
        @nome = nome
    end

    def add_modulo modulo
        modulo << modulo
    end

end