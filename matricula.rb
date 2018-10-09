class Matricula
  attr_reader :aluno, :curso, :modulo, :disciplina
  attr_accessor :media

  def initialize(aluno, curso, modulo, disciplina)
    @aluno = aluno
    @curso = curso
    @modulo = modulo
    @disciplina = disciplina
  end
end
