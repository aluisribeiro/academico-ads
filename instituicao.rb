class Instituicao
  attr_reader :nome, :matriculas

  def initialize(nome)
    @nome = nome
    @matriculas = []
  end

  def add_matricula(matricula)
    @matriculas << matricula
  end

  def media_do_curso(curso)
    matriculas = @matriculas.select { |matricula| matricula.curso.nome.eql? curso.nome }
    (matriculas.map(&:media).sum / matriculas.size).round 2
  end

  def media_da_disciplina(disciplina)
    matriculas = @matriculas.select { |matricula| matricula.disciplina.nome.eql? disciplina.nome }
    (matriculas.map(&:media).sum / matriculas.size).round 2
  end

  def media_do_modulo_e_disciplina(modulo, disciplina)
    matriculas = @matriculas.select { |matricula| matricula.modulo.nome.eql?(modulo.nome) && matricula.disciplina.nome.eql?(disciplina.nome) }
    (matriculas.map(&:media).sum / matriculas.size).round 2
  end
end
