require_relative "curso"
require_relative "modulo"
require_relative "disciplina"
require_relative "professor"
require_relative "aluno"
require_relative "matricula"

ads = Curso.new "ADS"
modulo = Modulo.new "Modulo 4", ads
ltp_quatro = Disciplina.new "LTP4"
agil = Disciplina.new "Agil"
redes = Disciplina.new "Redes"

anderson = Professor.new "Anderson"
leo = Professor.new "Leo"

ltp_quatro.add_professor anderson
ltp_quatro.add_professor leo
redes.add_professor leo

leo.add_disciplina ltp_quatro
leo.add_disciplina redes
anderson.add_disciplina ltp_quatro

#Adicionar Modulo no Curso
modulo.add_disciplina ltp_quatro
modulo.add_disciplina agil
modulo.add_disciplina redes

ltp_quatro.add_modulo modulo
agil.add_modulo modulo
redes.add_modulo modulo

ads.add_modulo(modulo)

felipe = Aluno.new "Felipe"
jair = Aluno.new "Jair"

matriculas = []
matriculas << Matricula.new(felipe, ads, modulo, ltp_quatro)
matriculas << Matricula.new(felipe, ads, modulo, agil)
matriculas << Matricula.new(felipe, ads, modulo, redes)

matriculas << Matricula.new(jair, ads, modulo, ltp_quatro)
matriculas << Matricula.new(jair, ads, modulo, agil)
matriculas << Matricula.new(jair, ads, modulo, redes)

p matriculas
