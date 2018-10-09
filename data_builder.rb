require_relative "curso"
require_relative "modulo"
require_relative "disciplina"
require_relative "professor"
require_relative "aluno"
require_relative "matricula"
require_relative "instituicao"

class DataBuilder
  attr_reader :unifeob, :ads, :modulo_quatro, :ltp, :agil, :redes, :jair, :felipe

  def build_data
    @unifeob = Instituicao.new "UNIFEOB"
    @ads = Curso.new "ADS"
    @modulo_quatro = Modulo.new "Modulo 4", @ads
    @ltp = Disciplina.new "LTP4"
    @agil = Disciplina.new "Agil"
    @redes = Disciplina.new "Redes"
    @felipe = Aluno.new "Felipe"
    @jair = Aluno.new "Jair"

    anderson = Professor.new "Anderson"
    leo = Professor.new "Leo"

    @ltp.add_professor anderson
    @ltp.add_professor leo
    @redes.add_professor leo

    leo.add_disciplina @ltp
    leo.add_disciplina @redes
    anderson.add_disciplina @ltp

    @modulo_quatro.add_disciplina @ltp
    @modulo_quatro.add_disciplina @agil
    @modulo_quatro.add_disciplina @redes

    @ltp.add_modulo @modulo_quatro
    @agil.add_modulo @modulo_quatro
    @redes.add_modulo @modulo_quatro

    @ads.add_modulo(@modulo_quatro)
    self
  end

  def add_matricula(aluno, curso, modulo, disciplina)
    @unifeob.add_matricula Matricula.new(aluno, curso, modulo, disciplina)
  end

  def add_media(aluno, curso, modulo, disciplina, media)
    matricula = @unifeob.matriculas.find { |matricula| matricula.aluno.nome.eql?(aluno.nome) && matricula.curso.nome.eql?(curso.nome) && matricula.modulo.nome.eql?(modulo.nome) && matricula.disciplina.nome.eql?(disciplina.nome) }
    matricula.media = media
  end
end
